//
// Created by zander on 2017/12/30.
//

#ifndef SPRITE_H
#define SPRITE_H

#include <cstddef> //offsetof

#include <GL/glew.h>

#include "include/Vertex.h"

/*
 * Sprites is 2D, 3D rendering kom later
 * Elke sprite benodig posisie en dimensies -> Sien init_sprite
 * Ons neem aan ons sprite is 'n 4kant en sal kleur en texture toeken
 */

class Sprite
{
public:
	Sprite();
	~Sprite();

	void init_sprite(float x, float y, float width, float height); //Initialize en set sy position
	void draw_sprite(); //Sal die sprite teken

private:
	float _x;
	float _y;
	float _width;
	float _height;
	GLuint _vertex_buffer_object_id;//GLuint is selfde as uint maar is gewaarborg om 32bits te wees | Die vertex buffer object id is 'n pointer na ons vertex buffer object op die GPU wat ons geallokeer het
};


#endif //SPRITE_H
