//
// Created by zander on 2017/12/30.
//

#ifndef VERTEX_H
#define VERTEX_H

#include <GL/glew.h>

//Skuif hom na buite dan kan ons hom op ander plekke ook gebruik eerder as om Vertex::Position position te verklaar elke keer
//omdat hy maar eerder meer 'n generiese struct is
struct Position
{
	float x;
	float y;
};

struct Color
{
	GLubyte r;
	GLubyte g;
	GLubyte b;
	GLubyte a;
};

struct Vertex
{
	Position position;
	Color color;
};

#endif //VERTEX_H
