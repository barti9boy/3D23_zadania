#version 440

layout(location=0) in  vec4 a_vertex_position;
layout(location=1) in vec3 inColor;

out vec3 outColor;

layout(std140, binding=1) uniform Transformations {
 vec2 scale;
 vec2 translation;
 mat2 rotation;
 } transformation;

void main() {
    gl_Position = a_vertex_position;
    outColor = inColor;

    gl_Position.xy = transformation.rotation*(transformation.scale*a_vertex_position.xy)+transformation.translation;
    gl_Position.zw = a_vertex_position.zw;
}
