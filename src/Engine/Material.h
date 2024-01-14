//
// Created by Piotr Białas on 02/11/2021.
//

#pragma once

#include <glad/gl.h>
#include <glm/glm.hpp>

#include "Application/utils.h"

namespace xe {

    class Material {
    public:
        virtual void bind() = 0;

        virtual void unbind() {};
    };

    class ColorMaterial : public Material {
    public:
        ColorMaterial(const glm::vec4 color, GLuint texture, GLuint texture_unit) : color_(color), texture_(texture), texture_unit_(texture_unit) {}

        void bind();

        static void init();

        static GLuint program() { return shader_; }

        void set_texture(GLuint tex) { texture_ = tex; }

        void set_texture_unit(GLuint tex_unit) { texture_unit_ = tex_unit; }

        GLuint get_texture() { return texture_; };

        GLuint get_texture_unit() { return texture_unit_; };


    private:
        static GLuint shader_;
        static GLuint color_uniform_buffer_;
        static GLint uniform_map_Kd_location_;
        GLuint texture_;
        GLuint texture_unit_;
        glm::vec4 color_;
    };


}


