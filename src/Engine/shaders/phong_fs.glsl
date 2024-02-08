#version 460

layout(location=0) out vec4 vFragColor;

#if __VERSION__ > 410
layout(std140, binding=0) uniform Modifiers {
#else
    layout(std140) uniform Color {
    #endif
    vec4  Kd;
};

in vec2 vertex_texcoords;

uniform sampler2D map_Kd;

in vec3 vertex_normals_in_vs;

void main() {
    vFragColor = Kd;
    vec3 normal = normalize(vertex_normals_in_vs);
    vFragColor.rgb = normal;

}