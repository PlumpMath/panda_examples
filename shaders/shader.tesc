#version 430
#pragma include "shader.data"

// Set the tessellation level.

uniform float tess_level;
// in demoVertex v[];

layout(vertices = 3) out;
// layout(location = 0) out demoVertex v_tesc[];

void main() {
  if (gl_InvocationID == 0) {
    gl_TessLevelInner[0] = tess_level;
    gl_TessLevelInner[1] = tess_level;
    gl_TessLevelOuter[0] = tess_level;
    gl_TessLevelOuter[1] = tess_level;
    gl_TessLevelOuter[2] = tess_level;
    gl_TessLevelOuter[3] = tess_level;
  }
  gl_out[gl_InvocationID].gl_Position = gl_in[gl_InvocationID].gl_Position;
  // v_tesc[gl_InvocationID] = v_vert[gl_InvocationID];
}

