#version 440

layout(location=0) out vec4 vFragColor;
in vec3 outColor;
layout(std140, binding = 0) uniform Modifier {
    float strength;
    vec3  color;
} modifier;

layout(std140, binding=0) uniform Color {
    vec4  Kd;
    int use_map_Kd;
};
in vec2 vertex_texcoords;
uniform sampler2D map_Kd;


void main() {
    vFragColor = vec4(outColor, 1.0f);
    if(use_map_Kd == 0)
    {
        vFragColor=Kd;
    }
    else
    {
        vFragColor=Kd*texture(map_Kd, vertex_texcoords);
    }
}
