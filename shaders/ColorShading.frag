#version 130

//sit flat vooraan in en match die vertex shader dan sal hy nie interpoleer nie
in vec4 fragment_color; //kry geinterpoleerde kleur vanaf vertex shader
in vec2 fragment_position;

out vec4 color;//out variable output na screen

//in kom in per vertex
uniform float time; //uniform is global variable en hele mesh het toegang tot hom -> per mesh
//uniform kan ook gebruik word as die hele model een kleur is dan word daar nie kleur per vertex gestuur nie

void main()
{
    //color = fragment_color + vec4(1.0 * (cos(time) + 1.0) * 0.5,
                                 //1.0 * (cos(time + 2.0) + 1.0) * 0.5,
                                 //1.0 * (sin(time + 1.0) + 1.0) * 0.5, 0.0);
    color = vec4(fragment_color.r * (cos(fragment_position.x * 4.0 + time) + 1.0) * 0.5,
                 fragment_color.g * (cos(fragment_position.y * 8.0 + time) + 1.0) * 0.5,
                 fragment_color.b * (cos(fragment_position.x * 2.0 + time) + 1.0) * 0.5, fragment_color.a);

	//gl_FragColor = vec4(, 1.0);
}
