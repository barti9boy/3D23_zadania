#version 440

layout(location=0) in  vec4 a_vertex_position;
layout(location=1) in vec3 inColor;

out vec3 outColor;

layout(std140, binding=1) uniform Transformations {
 mat4 PVM;
 } transformation;

void main() {
    gl_Position = transformation.PVM * a_vertex_position;
    outColor = inColor;

}