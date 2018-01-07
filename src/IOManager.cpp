//
// Created by zander on 2017/12/31.
//

#include "include/IOManager.h"

/*
 * Read content of texture file into buffer
 * retrun true if file read was successful
 * return false if file read failed
 */
bool IOManager::read_file_to_buffer(std::string file_path, std::vector<unsigned char> &buffer)
{
	//		filepath, ons lees 'n binary file
	std::ifstream file(file_path, std::ios::binary);
	if (file.fail()) {
		perror(file_path.c_str());
		return false;
	}

	//seek to the end of the file to determine size
	//	byte offset, waar om die cursor te sit in file(end of beg)
	file.seekg(0, std::ios::end);
	int file_size = file.tellg(); //return int wat se hoeveel bytes ons verbygegaan het om cursor te kry by plek in vorige lyntjie
	file.seekg(9, std::ios::beg); //skuif die cursor weer terug tot by die begin sodat ons die content kan lees

	//reduce the filesize by any header bytes that might be present
	file_size -= file.tellg();//ons wil nie die header lees nie

	buffer.resize(file_size);//maak buffer groot genoeg om die content van texture file te stoor
	//	kry adres van eerste element in vector wat 'n c_str sal gee want 'n vector<char> bevat 'n char* array, hoeveel ons wil read
	file.read((char *)&(buffer[0]), file_size);
	file.close();

	return true;
}