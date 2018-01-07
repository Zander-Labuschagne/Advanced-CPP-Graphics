//
// Created by zander on 2018/01/03.
//

#include <GL/glew.h>

#ifndef OPENGLTEXTURE_H
#define OPENGLTEXTURE_H

/*
 * PNG Texture vir OpenGL wat ons in game gebruik word soos volg gedefinieer
 */
struct OpenGLTexture
{
	GLuint id;
	int width;
	int height;
};

#endif //OPENGLTEXTURE_H
