//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float colourAlpha; 

void main()
{
	//Stores all three colours // alpha
	vec4 colour = texture2D( gm_BaseTexture, v_vTexcoord );
	
	if(colour.a != 0.0){
		gl_FragColor = vec4(255, 255, 255, colourAlpha);
	}
}
