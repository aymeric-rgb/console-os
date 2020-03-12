interp vec4 interp_vertex_position;
interp vec2 interp_texture_coords;

inform tex2 inform_texture;

vec4 colour = sample(inform_texture, interp_texture_coords);

vec3 light_vector = vec3(0.0, 1.0, 0.0) - interp_vertex_position.xyz;
vec3 light_colour = vec3(1.0, 0.5, 0.0);
flt light_strength = 0.3;
colour.xyz = mix(colour.xyz, light_colour, 1.0 / sqrt(dot(light_vector, light_vector)) * light_strength);

return colour;
