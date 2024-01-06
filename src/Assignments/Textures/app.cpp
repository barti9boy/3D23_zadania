//
// Created by pbialas on 25.09.2020.
//

#include "app.h"

#include <iostream>
#include <vector>
#include <tuple>
#include <cstring>
#include <valarray>

#include "Application/utils.h"
#include "glm/glm.hpp"
#include "glm/gtc/constants.hpp"
#include "glm/gtc/matrix_transform.hpp"
#include <glm/gtc/type_ptr.hpp>
#include "XeEngine/ColorMaterial.h"
#include "XeEngine/ColorMaterial.cpp"
#define STB_IMAGE_IMPLEMENTATION  1

#include "3rdParty/stb/stb_image.h"


void SimpleShapeApplication::init() {
    // A utility function that reads the shader sources, compiles them and creates the program object
    // As everything in OpenGL we reference program by an integer "handle".
    auto program = xe::utils::create_program(
            {{GL_VERTEX_SHADER,   std::string(PROJECT_DIR) + "/shaders/base_vs.glsl"},
             {GL_FRAGMENT_SHADER, std::string(PROJECT_DIR) + "/shaders/base_fs.glsl"}});

    if (!program) {
        std::cerr << "Invalid program" << std::endl;
        exit(-1);
    }
    xe::ColorMaterial::init();
    set_camera(new Camera);
    set_controler(new CameraControler(camera()));


    // A vector containing the x,y,z vertex coordinates for the triangle.
    std::vector<GLfloat> vertices = {
            -0.5f, 0.0f, -0.5f, 1.0f, 0.0f, 0.0f, 0.1910f, 0.5f,
            0.5f, 0.0f, -0.5f, 1.0f, 0.0f, 0.0f, 0.5f, 0.1910f,
            -0.5f, 0.0f, 0.5f, 1.0f, 0.0f, 0.0f, 0.5f, 0.8090f,

            -0.5f, 0.0f, 0.5f, 1.0f, 0.0f, 0.0f, 0.5f, 0.8090f,
            0.5f, 0.0f, -0.5f, 1.0f, 0.0f, 0.0f, 0.5f, 0.1910f,
            0.5f, 0.0f, 0.5f, 1.0f, 0.0f, 0.0f, 0.8090f, 0.5f,

            -0.5f, 0.0f, -0.5f, 0.0f, 1.0f, 0.5f, 0.1910f, 0.5f,
            0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.5f, 0.0f, 0.0f,
            0.5f, 0.0f, -0.5f, 0.0f, 1.0f, 0.5f, 0.5f, 0.1910f,

            0.5f, 0.0f, -0.5f, 1.0f, 1.0f, 0.0f, 0.5f, 0.1910f,
            0.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f,
            0.5f, 0.0f, 0.5f, 1.0f, 1.0f, 0.0f, 0.8090f, 0.5f,

            0.0f, 1.0f, 0.0f, 0.5f, 1.0f, 1.0f, 1.0f, 1.0f,
            -0.5f, 0.0f, 0.5f, 0.5f, 1.0f, 1.0f, 0.5f, 0.8090f,
            0.5f, 0.0f, 0.5f, 0.5f, 1.0f, 1.0f, 0.8090f, 0.5f,

            -0.5f, 0.0f, 0.5f, 0.5f, 0.0f, 1.0f, 0.5f, 0.8090f,
            0.0f, 1.0f, 0.0f, 0.5f, 0.0f, 1.0f, 0.0f, 1.0f,
            -0.5f, 0.0f, -0.5f, 0.5f, 0.0f, 1.0f, 0.1910f, 0.5f,


            //-0.5f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f,

            //-0.5f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f,
            //0.5f, -0.5f, 0.0f, 0.0f, 1.0f, 0.0f,
            //0.5f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f,


    };
    std::vector<GLushort> indices  = {
            0, 1, 2,
            3, 4, 5,
            6, 7, 8,
            9, 10, 11,
            12, 13, 14,
            15, 16, 17
    };



    // Generating the buffer and loading the vertex data into it.
    GLuint v_buffer_handle;
    glGenBuffers(1, &v_buffer_handle);
    GLuint  i_buffer_handle; //
    glGenBuffers(1, &i_buffer_handle);
    GLuint uniform_buffer_handle;
    glGenBuffers(1, &uniform_buffer_handle);
    glGenBuffers(1, &transformation_buffer_handle);


    OGL_CALL(glBindBuffer(GL_ARRAY_BUFFER, v_buffer_handle));
    glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(GLfloat), vertices.data(), GL_STATIC_DRAW);
    glBindBuffer(GL_ARRAY_BUFFER, 0);

    OGL_CALL(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, i_buffer_handle));
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof (GLushort), indices.data(), GL_STATIC_DRAW);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);

    float strength = 1.0f;
    float color[3] = {0.0f, 1.0f, 0.0f};
    OGL_CALL(glBindBuffer(GL_UNIFORM_BUFFER, uniform_buffer_handle));
    glBufferData(GL_UNIFORM_BUFFER, 8*sizeof(float), nullptr, GL_STATIC_DRAW);
    glBufferSubData(GL_UNIFORM_BUFFER, 0, sizeof(float), &strength);
    glBufferSubData(GL_UNIFORM_BUFFER, 4*sizeof(float), 3 * sizeof(float),&color);


    /*float fov_;
    float aspect_;
    float near_;
    float far_;

    glm::mat4 P_;
    glm::mat4 V_;
    */
    int w, h;
    std::tie(w, h) = frame_buffer_size();
    //aspect_ = (float)w/h;
    //fov_ = glm::pi<float>()/4.0;
    //near_ = 0.1f;
    //far_ = 100.0f;
    //P_ = glm::perspective(fov_, aspect_, near_, far_);

    glm::vec3 eye ;
    glm::vec3 up;
    glm::vec3 center;
    if(eye.x == 0 and eye.z == 0){
        up = glm::vec3(0.0f, 0.0f, 1.0f);
    }

    //V_ = glm::lookAt(eye, center, up);
    camera_->look_at(glm::vec3(3.0f, 4.0f, 0.0f),
                     glm::vec3(0.0f, 0.0f, 0.0f),
                     glm::vec3(0.0f, 1.0f, 0.0f));

    camera_->perspective(glm::pi<float>()/4.0, (float)w/h, 0.1f, 100.0f);


    glm::mat4 PVM(1.0f);


    model = glm::mat4(1.0f); // Identity model matrix
    //glm::mat4 view = V_; // Example view matrix
    //glm::mat4 projection = P_; // Example perspective projection matrix

    //PVM = camera_->projection() * camera_->view() * model;

    OGL_CALL(glBindBuffer(GL_UNIFORM_BUFFER, transformation_buffer_handle));
    glBufferData(GL_UNIFORM_BUFFER, sizeof(glm::mat4), glm::value_ptr(PVM), GL_STATIC_DRAW);
    glBindBufferBase(GL_UNIFORM_BUFFER, 1, transformation_buffer_handle);
    glBindBuffer(GL_UNIFORM_BUFFER, 0);

    //Uniforms
    float theta = 1.0*glm::pi<float>()/6.0f;
    auto cs = std::cos(theta);
    auto ss = std::sin(theta);
    glm::mat2 rot{cs,ss,-ss,cs};
    glm::vec2 trans{0.0,  -0.25};
    glm::vec2 scale{0.5, 0.5};
    OGL_CALL(glBindBuffer(GL_UNIFORM_BUFFER, transformation_buffer_handle));
    glBufferData(GL_UNIFORM_BUFFER, 16*sizeof(float), nullptr, GL_STATIC_DRAW);
    glBindBufferBase(GL_UNIFORM_BUFFER, 1, transformation_buffer_handle);
    glBufferSubData(GL_UNIFORM_BUFFER, 0* sizeof(float), 2* sizeof(float), &PVM[0]);
    glBufferSubData(GL_UNIFORM_BUFFER, 4* sizeof(float), 2* sizeof(float), &PVM[1]);
    glBufferSubData(GL_UNIFORM_BUFFER, 8* sizeof(float), 4* sizeof(float), &PVM[2]);
    glBufferSubData(GL_UNIFORM_BUFFER, 12* sizeof(float), 4* sizeof(float), &PVM[3]);
    glBindBuffer(GL_UNIFORM_BUFFER, 0);


    // This setups a Vertex Array Object (VAO) that  encapsulates
    // the state of all vertex buffers needed for rendering
    glGenVertexArrays(1, &vao_);
    glBindVertexArray(vao_);
    glBindBuffer(GL_ARRAY_BUFFER, v_buffer_handle);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, i_buffer_handle);
    glBindBufferBase(GL_UNIFORM_BUFFER, 0, uniform_buffer_handle);

    // This indicates that the data for attribute 0 should be read from a vertex buffer.
    glEnableVertexAttribArray(0);
    glEnableVertexAttribArray(1);
    glEnableVertexAttribArray(2);
    // and this specifies how the data is layout in the buffer.
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(GLfloat), reinterpret_cast<GLvoid *>(0));
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(GLfloat), reinterpret_cast<GLvoid *>(3*sizeof(GLfloat)));
    glVertexAttribPointer(2, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(GLfloat), reinterpret_cast<GLvoid *>(6*sizeof(GLfloat)));

    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);
    //end of vao "recording"

    // Setting the background color of the rendering window,
    // I suggest not to use white or black for better debuging.
    glClearColor(0.81f, 0.81f, 0.8f, 1.0f);

    // This setups an OpenGL vieport of the size of the whole rendering window.
    //auto[w, h] = frame_buffer_size();
    glViewport(0, 0, w, h);

    glUseProgram(program);
}

//This functions is called every frame and does the actual rendering.
void SimpleShapeApplication::frame() {
    auto PVM = camera_->projection() * camera_->view() * model;
    glBindBuffer(GL_UNIFORM_BUFFER, transformation_buffer_handle);
    glBufferSubData(GL_UNIFORM_BUFFER, 0, sizeof(glm::mat4), &PVM[0]);
    glBindBuffer(GL_UNIFORM_BUFFER, 0);

    // Binding the VAO will setup all the required vertex buffers.
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE);
    glBindVertexArray(vao_);
    glDrawElements(GL_TRIANGLES, 18, GL_UNSIGNED_SHORT, nullptr);
    glBindVertexArray(0);
}

void SimpleShapeApplication::framebuffer_resize_callback(int w, int h) {
    Application::framebuffer_resize_callback(w, h);
    glViewport(0,0,w,h);
    //aspect_ = (float) w / h;
    camera_->set_aspect((float) w / h);
    //P_ = glm::perspective(fov_, aspect_, near_, far_);

}


