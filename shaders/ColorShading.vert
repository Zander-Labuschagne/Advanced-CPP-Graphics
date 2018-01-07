#version 130

//Die vertex shader operates op elke vertex

//Input data from VBO
//in is soos attribute
in vec2 vertex_position;//Input variable type vec 2 for x and y floating point numbers for coordinates
in vec4 vertex_color;

//sit flat vooraan out en match die fragment shader se var dan sal hy nie kleur  interpoleer tussen vertices nie
out vec4 fragment_color;//interpoleer tussen vertices se kleure en stuur na die fragment shader
out vec2 fragment_position;

//Main vir shader
void main()
{
    //se vir shader waar(posisie) is die vertices
	gl_Position.xy = vertex_position;//set x,y position on screen
	gl_Position.z = 0.0;//z=0 since we are in 2D
	gl_Position.w = 1.0;//indicate that coordinates are normalized

	fragment_color = vertex_color;
	fragment_position = vertex_position;
}
