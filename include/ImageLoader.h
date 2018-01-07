//
// Created by zander on 2018/01/03.
//

#ifndef IMAGELOADER_H
#define IMAGELOADER_H

#include <string>

#include "include/picoPNG.h"

#include "include/Errors.h"
#include "include/IOManager.h"
#include "include/OpenGLTexture.h"

class ImageLoader
{
public:
	static OpenGLTexture loadPNG(std::string file_path);
};


#endif //ADVANCED_C_GRAPHICS_IMAGELOADER_H
