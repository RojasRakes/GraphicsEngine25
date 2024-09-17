#version 330 core
layout (location = 0) in vec3 aPos; //Postition has the attribute position of 0 
//layout (location = 1) in vec3 aColor; //Colour has the attribute position of 1
layout (location = 1) in vec2 aTexCoOrd; //Texture has teh attibute position of 2
//out vec3 ourColor;
out vec2 TexCoOrd;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
void main()
{ //We read the matrix multiplication from right to left
	gl_Position = projection * view * model * vec4(aPos, 1.0);
//	ourColor = aColor; //set ourColor to inpute color from the vertex data
	TexCoOrd = aTexCoOrd; //set OurTexCoord to iput texture coords from array
}
