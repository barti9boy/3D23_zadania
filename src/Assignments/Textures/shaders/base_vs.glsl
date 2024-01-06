#version 440

layout(location=0) in  vec4 a_vertex_position;
layout(location=1) in vec3 inColor;
layout(location=2) in vec2 inTexture;

out vec3 outColor;
out vec2 TextureCoordinates;

layout(std140, binding=1) uniform Transformations {
 mat4 PVM;
 } transformation;

void main() {
    gl_Position = transformation.PVM * a_vertex_position;
    outColor = inColor;
    TextureCoordinates = inTexture;
}
