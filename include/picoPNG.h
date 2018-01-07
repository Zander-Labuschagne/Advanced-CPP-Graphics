//
// Created by zander on 2018/01/03.
//

#ifndef PICPNG_H
#define PICOPNG_H

#include <vector>

//die function is verklaar in aparte file
extern int decodePNG(std::vector<unsigned char> &out_image, unsigned long &image_width, unsigned long &image_height, const unsigned char *in_png, size_t in_size, bool convert_to_rgba32 = true);


#endif //PICOPNG_H
