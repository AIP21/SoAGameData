// Uniforms
uniform mat4 unWVP;
uniform vec3 unLightDirWorld;

// Input
in vec3 vPosition;
in vec3 vNormal;
in vec2 vUV;

// Output
out vec3 fNormal;
out vec4 fPosition;
out vec2 fUV;

void main() {
    fNormal = vNormal;
	fUV = vUV;
	fPosition = vec4(vPosition, 1.0);
    gl_Position = unWVP * vec4(vPosition, 1.0);
}