//
// Created by zander on 2017/12/29.
//

#include "include/Errors.h"
#include "include/MainGame.h"

/*
 * Helper funksie om vinnige en eenvoudige maar swak error checking te doen
 */
//void fatal_error(std::string err)
//{
//	std::cout << err << std::endl; //std::cerr?
//	std::cout << "Enter any key to exit...";
//	int tmp;
//	std::cin >> tmp;
//	SDL_Quit(); //SDL funksie om te exit
//
//}

MainGame::MainGame() :
	_time(0.0f),
	_screen_width(1024),
	_screen_height(768),
	_window(nullptr),
	_current_game_state(GameState::PLAY)
{

}

MainGame::~MainGame()
{

}

/*
 * Sal die game run
 */
void MainGame::run()
{
	init_systems();

	_sprite.init_sprite(-1.0f, -1.0f, 2.0f, 2.0f); //Hardcode die goed vir nou

	game_loop();
}

/*
 * Sal alles wat nodig is vir game initialize soos SDL, OpenGL, Window ens
 */
void MainGame::init_systems()
{
	//Initialize SDL
	SDL_Init(SDL_INIT_EVERYTHING); //Initialize alles wat SDL het om te gee al gebruik ons dit nie

	//			   "Window Title"	X position of window	y position of window	window width	window height	window type ie resizable etc
	_window = SDL_CreateWindow("Graphics Engine", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, _screen_width, _screen_height, SDL_WINDOW_OPENGL); //Return pointer na window indien suksesvol anders null pointer
	if (_window == nullptr)
		fatal_error("SDL Window creation failed");

	//Nou maak ons vir ons 'n OpenGL conteks een gee die konteks vir die window
	SDL_GLContext gl_context = SDL_GL_CreateContext(_window);
	if (gl_context == nullptr)
		fatal_error("SDL Context creation and assignment failed");

	//Initialize glew om al ons extensions op te stel(nie nodig vir openGL funksies nie) -> help as die hardeware nie alles support nie
	GLenum err = glewInit(); //return 'n error code in enum om error handling te doen
	if (err != GLEW_OK)
		fatal_error("GLEW failed to initialize");

	//Gebruik 2 windows, een om te clear en een om op te teken -> vermy flickering
	SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);

	//	      R	    G	  B	A
	glClearColor(0.0f, 0.0f, 1.0f, 1.0); //Die glColorBufferBit in glClear sal die window clear na hierdie kleur

	init_shaders();
}

void MainGame::init_shaders()
{
//1. Compile Shaders
	_color_shader_program.compile_shaders("../shaders/ColorShading.vert", "../shaders/ColorShading.frag");
//2. Add attributes
	_color_shader_program.add_attribute("vertex_position");
	_color_shader_program.add_attribute("vertex_color");
//3. Link Shaders
	_color_shader_program.link_shaders();
}

/*
 * Loop om game state te hou tot user exit
 * Run basies die game
 */
void MainGame::game_loop()
{
	while (_current_game_state != GameState::EXIT){
		process_input();
		_time += 0.01;
		draw_game();
	}
}

void MainGame::process_input()
{
	SDL_Event e;

	//Maak dalk 'n if omdate die funksie klaar in loop geroep word
	while (SDL_PollEvent(&e)) { //Word gebruik om te "sense" vir user input -> retrun true as daar wel event is
		//Kyk nou watse tipe event gebeur het
		switch (e.type)
		{
			case SDL_QUIT:
				_current_game_state = GameState::EXIT;
				break;
			case SDL_MOUSEMOTION:
				std::cout << e.motion.x << " " << e.motion.y << std::endl; //Wys muis koordinate
				break;
		}
	}
}

void MainGame::draw_game()
{
	glClearDepth(1.0); //Se vir OpenGL tot watter diepte om te clear
	//	clear die kleur buffer(die kleure op die 3hoeke)  | clear die diepte buffer()
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT); //Clear die skerm/buffer elke keer voor ons draw
	// |: bitwise or kombineer 2 getalle so dis asof hy altwee uitvoer
	//TODO: Gaan kyk na die implementering van die glClear funksie om te kyk hoe hy die bitwise or hanteer

	_color_shader_program.use_program(); //kan net een program op 'n tyd gebruik

	GLuint time_location = _color_shader_program.get_uniform_id("time");//kry die addres van time variable op GPU in shader
	//stuur waarde na shader op gpu
	glUniform1f(time_location, _time);//1float, vec3 tipe sal 3f wees bv of 3fv sal 3 floats wees per index in 'n vector/array

	_sprite.draw_sprite();

	_color_shader_program.unuse_program();

	SDL_GL_SwapWindow(_window); //Swap die buffer en teken na skerm
}