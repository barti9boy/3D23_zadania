//
// Created by pbialas on 05.08.2020.
//

#pragma once

#include <vector>

#include "Application/application.h"
#include "Application/utils.h"

#include "glad/gl.h"
#include "glm/glm.hpp"
#include "glm/gtc/constants.hpp"
#include "glm/gtc/matrix_transform.hpp"
#include <glm/gtc/type_ptr.hpp>
#include "camera.h"
#include "CameraControler.h"
#include "Engine/Material.h"
#include "Engine/Mesh.h"


class SimpleShapeApplication : public xe::Application
{
public:
    SimpleShapeApplication(int width, int height, std::string title, bool debug) : Application(width, height, title, debug) {}

    void init() override;

    void frame() override;

    void framebuffer_resize_callback(int w, int h) override;

    glm::mat4 model;
    Camera *camera_;
    CameraControler *controler_;




    void set_controler(CameraControler *controler) { controler_ = controler; controler_->LMB_pressed_=false; controler_->scale_=0.01;}

    void set_camera(Camera *camera) { camera_ = camera; }
    Camera *camera() { return camera_; }
    ~SimpleShapeApplication() {
        if (camera_) {
            delete camera_;
        }
    }
    void scroll_callback(double xoffset, double yoffset) override {
        Application::scroll_callback(xoffset, yoffset);
        camera()->zoom(yoffset / 30.0f);
    }

    void mouse_button_callback(int button, int action, int mods) {
        Application::mouse_button_callback(button, action, mods);

        if (controler_) {
            double x, y;
            glfwGetCursorPos(window_, &x, &y);

            if (button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS)
                controler_->LMB_pressed(x, y);

            if (button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_RELEASE)
                controler_->LMB_released(x, y);
        }

    }

    void cursor_position_callback(double x, double y) {
        Application::cursor_position_callback(x, y);
        if (controler_) {
            controler_->mouse_moved(x, y);
        }
    }


private:
    void add_submesh(xe::Mesh *mesh) {
        meshes_.push_back(mesh);
    }
    std::vector<xe::Mesh*> meshes_;
    GLuint transformation_buffer_handle;
    GLuint u_pvm_buffer_;
    GLuint vao_;
};