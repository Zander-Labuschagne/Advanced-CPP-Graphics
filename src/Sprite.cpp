//
// Created by zander on 2017/12/30.
//

/*
 * Al ons sprites is 2D
 */

#include "include/Sprite.h"

Sprite::Sprite()
{
	_vertex_buffer_object_id = 0;
}

Sprite::~Sprite()
{
//6. Delete die buffers vanaf RAM
	//se vir GPU om die vram wat ons gebruik het te free
	if (_vertex_buffer_object_id != 0)
		glDeleteBuffers(1, &_vertex_buffer_object_id); //soos gen buffers
}

/*
 * Initialize en set sy position
 * Ons neem aan ons sprite is 'n 4kant en sal kleur en texture toeken
 * Elke sprite benodig posisie en dimensies
 * Sprites is 2D
 * Ons paramters vat skerm koordinate(ek hou nie hiervan nie) en sal later convert na normaliseerde koordinate waarvan ek hou
 * Het die int parameters na float gemaak ek dink dit gebruik nou normaliseerde koordinate
 */
void Sprite::init_sprite(float x, float y, float width, float height)
{
	_x = x;
	_y = y;
	_width = width;
	_height = height;

//1. Create vertex buffer and assign to id
	//1.1. Generate die buffer
	if (_vertex_buffer_object_id == 0) //As vbo nog nie gegenerate is nie -> id 0 is no buffer
		//se vir OpenGL vat die id en allokeer dit aan buffer
		//	   ons soek 1 buffer, verander ons id na die een wat vir ons gegee is
		glGenBuffers(1, &_vertex_buffer_object_id);

//2. Create/Get vertex data
	//2.1 Create space vir vertices
	Vertex vertex_data[6];// 6 vertices elk het alles wat gedefinieer is in die Vertex struct
	//2.2 Create vertex data | NB! nie in normaliseerde koordinaat ruimte nie die is in skerm koordinaat ruimte
	//eerste driehoek
	//eerste vertex
	vertex_data[0].position.x = x + width;
	vertex_data[0].position.y = y + height;
	//tweede vertex
	vertex_data[1].position.x = x;
	vertex_data[1].position.y = y + height;
	//derde vertex
	vertex_data[2].position.x = x;
	vertex_data[2].position.y = y;

	//tweede driehoek
	//eerste vertex
	vertex_data[3].position.x = x;
	vertex_data[3].position.y = y;
	//tweede vertex
	vertex_data[4].position.x = x + width;
	vertex_data[4].position.y = y;
	//derde vertex
	vertex_data[5].position.x = x + width;
	vertex_data[5].position.y = y + height;

	for(int i = 0; i < 6; i++) {
		vertex_data[i].color.r = 0;
		vertex_data[i].color.g = 255;
		vertex_data[i].color.b = 255;
		vertex_data[i].color.a = 255;
	}

	vertex_data[1].color.r = 255;
	vertex_data[1].color.g = 0;
	vertex_data[1].color.b = 255;
	vertex_data[1].color.a = 255;

	vertex_data[4].color.r = 0;
	vertex_data[4].color.g = 255;
	vertex_data[4].color.b = 0;
	vertex_data[4].color.a = 255;

//3. Bind die buffer
	//	tipe buffer: basic vertex array buffer,	watse buffer om te bind
	glBindBuffer(GL_ARRAY_BUFFER, _vertex_buffer_object_id); //Se vir OpenGL dat hierdie buffer nou aktief is
//4. Upload data na vertex buffer
	//	watter buffer ons wil gebruik, hoeveel data ons wil upload, die data wat ons wil upload, hoe ons dit wil gebruik(teken een keer of baie -> static is vir nou en dan)
	glBufferData(GL_ARRAY_BUFFER, sizeof(vertex_data), vertex_data, GL_STATIC_DRAW);

//5. Unbind die buffer
	//	   watse buffer ons wil bind, 0 se ek wil niks bind nie
	glBindBuffer(GL_ARRAY_BUFFER, 0); //0 is no buffer
}

void Sprite::draw_sprite()
{
//1. Bind die buffer om hom weer aktief te maak
	glBindBuffer(GL_ARRAY_BUFFER, _vertex_buffer_object_id); //Ons kan net een buffer op 'n slag aktief he

//2. Spesifiseer die vertices se attributes(op die oomblik is daar net posisie, geen kleur of lighting of iets)
	//			watter vertex attrib array ons soek(ons het net een) -> 0de index
	glEnableVertexAttribArray(0);

//3. se vir OpenGL waar ons vertex data is in die vertexbufferid
	//		    ons het 0de index enable, 2 koordinate per vertex, die tipe van ons data(8 bytes per slag), coord is klaar genormaliseer, size van vertex struct, offset in bytes vir attribute
	glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void *)offsetof(Vertex, position)); //Position attribute by offset van 0 in die struct
	//		    volgende index, 4 kleure per vertex rgba, is tipe unsigned byte, ons moet 255 normalize na 1, ...
	glVertexAttribPointer(1, 4, GL_UNSIGNED_BYTE, GL_TRUE, sizeof(Vertex), (void *)offsetof(Vertex, color));//Color attribute by offset van 8 want coord voor hom is 2x4bytes

//4. Teken ons array van vertices
	//	   teken 3hoeke(kan ook GL_POINTS, GL_QUADS), begin by 0, ons teke 6 vertices
	glDrawArrays(GL_TRIANGLES, 0, 6);

//5. Disable die attributes array -> sien 2.
	glDisableVertexAttribArray(0);

//6. Unbind die buffer -> sien 1
	glBindBuffer(GL_ARRAY_BUFFER, 0);
}