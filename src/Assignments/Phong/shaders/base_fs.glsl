#version 440

layout(location=0) out vec4 vFragColor;
in vec3 outColor;
layout(std140, binding = 0) uniform Modifier {
    float strength;
    vec3  color;
} modifier;

layout(std140, binding=0) uniform Color {
    vec4  Kd;
    bool use_map_Kd;
};
in vec4 vertex_coords_in_vs;
in vec3 vertex_normals_in_vs;


const int MAX_POINT_LIGHTS=24;

struct PointLight {
    vec3 position_in_view_space;
    vec3 color;
    float intensity;
    float radius;
} ;

layout(std140, binding=2) uniform Lights {
    vec3 ambient;
    uint n_p_lights;
    PointLight p_light[MAX_POINT_LIGHTS];
};

void main() {
    vFragColor = abs(vertex_coords_in_vs);
    vFragColor.a = Kd.a;
    vFragColor.rgb = Kd.rgb*ambient;

    vec3 diffuse_color = vec3(0.0);

    for (uint i = 0; i < n_p_lights; ++i) {
        vec3 light_direction = normalize(p_light[i].position_in_view_space - gl_FragCoord.xyz);

        float diffuse_factor = dot(vertex_normals_in_vs, light_direction);
        vec3 diffuse_contribution = p_light[i].color * diffuse_factor * p_light[i].intensity;
        diffuse_color += diffuse_contribution;
    }

    vec3 ambient_color = ambient * diffuse_color;
    vec3 final_color = ambient_color + diffuse_color;
    vFragColor = vec4(final_color, 1.0);

}
