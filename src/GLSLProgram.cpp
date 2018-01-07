//
// Created by zander on 2017/12/30.
//

#include "include/GLSLProgram.h"

//initialize in selfde volgorde as verklaar in header
GLSLProgram::GLSLProgram() : _num_attributes(0), _program_id(0), _vertex_shader_id(0), _fragment_shader_id(0) //die is 'n initialization list soos hier onder in comments net vinniger want daar kom nie extra copies van die variables nie
{
	//_program_id = 0;
	//_vertex_shader_id = 0;
	//_fragment_shader_id = 0;
	//_num_attributyes = 0;
}

GLSLProgram::~GLSLProgram()
{

}

/*
 * read shaders from file and compile
 * die funksies van intro to modern openGL is beter
 */
void GLSLProgram::compile_shaders(const std::string &vertex_shader_file_path, const std::string &fragment_shader_file_path)
{
//1. Create program object
	_program_id = glCreateProgram(); //kry/create program object

//2. Create Shaders
	//1.1. Create Vertex Shader
	_vertex_shader_id = glCreateShader(GL_VERTEX_SHADER);
	if (_vertex_shader_id == 0)
		fatal_error("Vertex Shader creation failed");
	//1.2. Create Fragment Shader
	_fragment_shader_id = glCreateShader(GL_FRAGMENT_SHADER);
	if (_fragment_shader_id == 0)
		fatal_error("Fragment Shader creation failed");

//3. Compile Shaders
	compile_shader(vertex_shader_file_path, _vertex_shader_id);
	compile_shader(fragment_shader_file_path, _fragment_shader_id);

}

/*
 * Link die compiled shaders na 1 program
 * TODO: Daar is soortgelyke kode wat herhaal, maak dalk funksie vir die compilation/linking confirmation status
 */
void GLSLProgram::link_shaders()
{
//1. Attach shaders na program
	//		program pointer, shader pointer
	glAttachShader(_program_id, _vertex_shader_id);
	glAttachShader(_program_id, _fragment_shader_id);

//2. Link program
	glLinkProgram(_program_id);

//3. Confirm link status
	GLint is_linked = 0;
	glGetProgramiv(_program_id, GL_LINK_STATUS, (int *)&is_linked);
	if (is_linked == GL_FALSE){
		GLint max_length = 0;
		glGetProgramiv(_program_id, GL_INFO_LOG_LENGTH, &max_length);
		std::vector<char> err_log(max_length);
		glGetProgramInfoLog(_program_id, max_length, &max_length, &err_log[0]);
		glDeleteProgram(_program_id);//Het nie meer die program nodig nie
		glDeleteShader(_vertex_shader_id);//Moenie shaders leak nie
		glDeleteShader(_fragment_shader_id);

		std::printf("%s\n", &(err_log[0]));
		fatal_error("Shader linking failed");
	}
//5. Detach shaders as die link suksesvol was
	glDetachShader(_program_id, _vertex_shader_id);
	glDetachShader(_program_id, _fragment_shader_id);

//6. Delete Shaders
	glDeleteShader(_vertex_shader_id);
	glDeleteShader(_fragment_shader_id);
}

void GLSLProgram::add_attribute(const std::string &attribute_name)
{
	//		  program to bind, index van attribute(coord, color, text etc), naam van attribute
	glBindAttribLocation(_program_id, _num_attributes++, attribute_name.c_str());
}

GLint GLSLProgram::get_uniform_id(const std::string &uniform_name)
{
	GLint location = glGetUniformLocation(_program_id, uniform_name.c_str());
	if (location == GL_INVALID_INDEX)
		fatal_error("Uniform " + uniform_name + " not found in shader");

	return location;
}

void GLSLProgram::use_program()
{
	glUseProgram(_program_id);
	for (int i = 0; i < _num_attributes; i++)
		glEnableVertexAttribArray(i); //Enable al die attributes
}

void GLSLProgram::unuse_program()
{
	glUseProgram(0);
	for(int i = 0; i < _num_attributes; i++)
		glDisableVertexAttribArray(i);
}

/*
 * Die funksies van intro to modern openGL is beter
 */
void GLSLProgram::compile_shader(const std::string &shader_file_path, GLuint shader_id)
{
//1. Load glsl code from shader files
	//1.1. Read glsl code from file
	std::ifstream vertex_file(shader_file_path);
	if (vertex_file.fail()) {
		perror(shader_file_path.c_str()); //Wys error message meer spesifiek tot die probleem
		fatal_error("Failed to open " + shader_file_path + " during shader loading for compilation");
	}
	//1.2. Read data from file into string
	std::string file_contents = "";
	std::string line;
	while (std::getline(vertex_file, line))
		file_contents += line + "\n";//want getline sit nie die newline by nie
	//1.3. Close glsl file
	vertex_file.close();
//2. Specify shader source
	const char *contents_ptr = file_contents.c_str();
	//		shader_id, number of strings, pointer to c_string van vertex file, array van ints wat length van elke cstring in die array is
	glShaderSource(shader_id, 1, &contents_ptr, nullptr);

//3. Compile shader
	//		watter shader om te compile
	glCompileShader(shader_id);

//4. Check error status after compilation
	GLint success = 0;
	//		watter shader om te check, wat om te check, value
	glGetShaderiv(shader_id, GL_COMPILE_STATUS, &success);//get shader integer value
	if (success == GL_FALSE){
		GLint max_length = 0;
		//		watter shader is betrokke, wat om te kry van shader, stoor hier
		glGetShaderiv(shader_id, GL_INFO_LOG_LENGTH, &max_length);//kry lente van die log
		std::vector<char> err_log(max_length);
		glGetShaderInfoLog(shader_id, max_length, &max_length, &err_log[0]);
		glDeleteShader(shader_id);

		std::printf("%s\n", &(err_log[0]));
		fatal_error("Shader " + shader_file_path + " compilation failed");
	}
}