//
// Created by zander on 2017/12/29.
//

#ifndef MAINGAME_H
#define MAINGAME_H

#include <iostream>

#include <GL/glew.h>
#include <SDL2/SDL.h>

#include "include/Sprite.h"
#include "include/GLSLProgram.h"

enum class GameState {PLAY, EXIT}; //Vir nou hoef ons net 2 game states te hou

class MainGame
{
public:
	MainGame();
	~MainGame();

	void run();//Die sal die game run

private:
	void init_systems(); //sal alles initialize: SDL, OpenGL, Window, alles wat nodig is vir setup
	void init_shaders();
	void game_loop(); //
	void process_input(); //Poll vir input
	void draw_game();

	//Convemtion vir private vars is begin met _
	SDL_Window *_window; //Handle na ons window wat SDL vir ons gee as pointer
	int _screen_width;
	int _screen_height;
	GameState _current_game_state; //Om boek te hou van wat die huidige game state is

	Sprite _sprite;

	GLSLProgram _color_shader_program;

	float _time;
};


#endif //MAINGAME_H
