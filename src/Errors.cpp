//
// Created by zander on 2017/12/30.
//

#include "include/Errors.h"

void fatal_error(std::string err)
{
	std::cout << err << std::endl; //std::cerr?
	std::cout << "Enter any key to exit...";
	int tmp;
	std::cin >> tmp;
	SDL_Quit(); //SDL funksie om al SDL systems te stop
	exit(69);//Exit die program
}
