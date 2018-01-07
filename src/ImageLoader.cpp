//
// Created by zander on 2018/01/03.
//

#include <include/IOManager.h>
#include "include/ImageLoader.h"

OpenGLTexture ImageLoader::loadPNG(std::string file_path)
{
	OpenGLTexture texture = {}; //initialiseer alles in die struct na 0

	std::vector<unsigned char> in;
	std::vector<unsigned char> out;
	unsigned long width, height;

	if (!IOManager::read_file_to_buffer(file_path, in))
		fatal_error("Failed to load PNG file to buffer");


	int err_code = decodePNG(out, width, height, &(in[0]), in.size());
	if (err_code != 0)
		fatal_error("decodePNG failed with error: " + std::to_string(err_code));

	//	Maak 1 texture en assign id wat ons ontvang na texture.id
	glGenTextures(1, &(texture.id));
	glBindTexture(GL_TEXTURE_2D, texture.id);
	//	tipe texture(2D), mipmap level, rgba internal format, width, height, 0 om nie border te maak nie, format van pixels wat ons in lees, type of data(unsigned char = unsigned byte), pointer na pixel data(address na 0 is address na eerste pixel data, sonder 0 is insluitent header data)
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, &(out[0])); //stoor texture data wat ons gelees het op GRAM
	//set bietjie texture parameters vir ons texture
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);//Hoe die texture om 3D/2D model wrap
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
	glGenerateMipmap(GL_TEXTURE_2D);

	glBindTexture(GL_TEXTURE_2D, 0);

	return texture;

}