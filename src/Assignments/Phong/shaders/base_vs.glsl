#version 440

layout(location=0) in  vec4 a_vertex_position;
layout(location=1) in vec3 inColor;

out vec3 outColor;

layout(std140, binding=1) uniform Transformations {
 mat4 PVM;
 mat4 VM;
 mat3 N;
 } transformation;

out vec4 vertex_coords_in_vs;

void main() {
    gl_Position = transformation.PVM * a_vertex_position;
    vertex_coords_in_vs = vec4(a_vertex_position);
    outColor = inColor;

}
