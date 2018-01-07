//
// Created by zander on 2017/12/30.
//

#ifndef ERRORS_H
#define ERRORS_H

#include <cstdlib> //exit()
#include <iostream>
#include <string>

#include <SDL2/SDL.h>

extern void fatal_error(std::string err); //extern se die function is defined in ander file(vervang die class::function deel na net function)

#endif //ERRORS_H
