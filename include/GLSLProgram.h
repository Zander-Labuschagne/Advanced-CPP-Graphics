//
// Created by zander on 2017/12/30.
//

/*
 * This class handles the compilation, linking and usage of a GLSL shader program
 * Reference: http://www.opengl.org/wiki/Shader_Compilation
 */

#ifndef GLSLPROGRAM_H
#define GLSLPROGRAM_H

#include <fstream>
#include <string>
#include <vector>

#include <GL/glew.h>

#include "include/Errors.h"

class GLSLProgram
{
public:
	GLSLProgram();
	~GLSLProgram();

	void compile_shaders(const std::string &vertex_shader_file_path, const std::string &fragment_shader_file_path);//read shaders from file and compile

	void link_shaders();

	void add_attribute(const std::string &attribute_name);

	GLint get_uniform_id(const std::string &uniform_name);

	void use_program();
	void unuse_program();

private:
	int _num_attributes; //tel hoeveelheid attributes soos koordinate, kleur, texture ens

	void compile_shader(const std::string  &shader_file_path, GLuint shader_id);

	GLuint _program_id;//id handle wat verwys na die shader program op GPU soos vbo_id

	GLuint _vertex_shader_id;//handles verwys na ons aparte shaders op GPU
	GLuint _fragment_shader_id;
};

#endif //GLSLPROGRAM_H
