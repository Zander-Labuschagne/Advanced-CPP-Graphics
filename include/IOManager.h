//
// Created by zander on 2017/12/31.
//

#ifndef IOMANAGER_H
#define IOMANAGER_H

#include <fstream>
#include <string>
#include <vector>

class IOManager
{
public:
	static bool read_file_to_buffer(std::string file_path, std::vector<unsigned char> &buffer); //binary data kom in unsigned char
};


#endif //IOMANAGER_H
