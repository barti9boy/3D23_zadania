#version 410

layout(location=0) out vec4 vFragColor;

in vec3 outColor;

void main() {
    vFragColor = vec4(outColor, 1.0);
}
