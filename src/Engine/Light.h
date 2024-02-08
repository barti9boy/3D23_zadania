//
// Created by Barti on 07.02.2024.
//

#ifndef GRAPHICS3DCODE_LIGHT_H
#define GRAPHICS3DCODE_LIGHT_H

#endif //GRAPHICS3DCODE_LIGHT_H

#include "glm/glm.hpp"
#include "glm/gtc/constants.hpp"
#include "glm/gtc/matrix_transform.hpp"
#include <glm/gtc/type_ptr.hpp>

namespace xe {
    struct PointLight {
        PointLight() = default;
        PointLight(const glm::vec3 &pos, const glm::vec3 &color, float intensity, float radius)
                : position_in_ws(pos),
                  color(color), intensity(intensity), radius(radius) {}

        alignas(16) glm::vec3 position_in_ws;
        alignas(16) glm::vec3 position_in_vs;
        alignas(16) glm::vec3 color;
        float intensity;
        float radius;
    };
}