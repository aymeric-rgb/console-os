attrib vec4 attrib_vertex_position;
attrib vec2 attrib_texture_coords;
attrib vec3 attrib_vertex_normal;

interp vec4 interp_vertex_position;
interp vec2 interp_texture_coords;

interp_vertex_position = attrib_vertex_position;
interp_texture_coords = attrib_texture_coords;

inform mat4 inform_mvp_matrix;
return inform_mvp_matrix * interp_vertex_position;
