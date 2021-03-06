#version 430
layout(location=0) out vec4 FragColor;
uniform vec4 LightColor;
uniform vec4 DiffColor;
uniform float minnaertFactor;
in vec3 eNormal;
in vec4 eVertex;
in vec4 eLightPos;

void main()
{
	vec3 n = normalize(eNormal);
	vec3 ldir = normalize(eLightPos.xyz - eVertex.xyz);
	vec3 vdir = normalize(-eVertex.xyz);
	float NdotL = dot(n, ldir);
	float NdotV = dot(n, vdir);
	
	vec4 color = DiffColor * max(0.0, NdotL) * pow(NdotL * NdotV, minnaertFactor) * LightColor;
	FragColor = vec4(color); 
}