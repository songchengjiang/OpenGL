#version 430                                                
layout (location = 0) in vec3 position;                     
layout (location = 1) in vec3 normal;                       
layout (location = 2) in vec2 texcoord;                     
uniform mat4 u_ModelViewProjectMat;                         
uniform mat4 u_ModelViewMat;                                
uniform mat3 u_NormalMat;                                   
out vec3 v_position;                                        
out vec3 v_normal;                                          
out vec2 v_texcoord;     
out float zLinerDepth;                                   
void main()                                                 
{                                                           
	v_normal = u_NormalMat * normal;                          
	v_position = (u_ModelViewMat * vec4(position, 1.0)).xyz;  
	v_texcoord = texcoord; 
	gl_Position = u_ModelViewProjectMat * vec4(position, 1.0); 
	zLinerDepth = gl_Position.w;
}