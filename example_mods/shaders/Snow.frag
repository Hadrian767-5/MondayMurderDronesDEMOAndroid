// https://www.shadertoy.com/view/Ml3SRs

#pragma header

#define _NUMSHEETS 25.
#define _NUMFLAKES 30.

vec2 fragCoord = openfl_TextureCoordv*openfl_TextureSize;
vec2 iResolution = openfl_TextureSize;
uniform float iTime;
#define iChannel0 bitmap
#define texture flixel_texture2D
#define fragColor gl_FragColor

vec2 uv;

// The classic GLSL random function
float rnd(float x)
{
    return fract(sin(dot(vec2(x+47.49,38.2467/(x+2.3)), vec2(12.9898, 78.233)))* (43758.5453));
}

// From https://www.shadertoy.com/view/MscXD7
float drawFlake(vec2 center, float radius)
{
    return 1.0 - sqrt(smoothstep(0.0, radius, length(uv - center)));
}

void main()
{
	uv = openfl_TextureCoordv*openfl_TextureSize / openfl_TextureSize.x;

    vec3 col = vec3(0., 0., 0.);
    for (float i = 1.; i <= _NUMSHEETS; i++){
        for (float j = 1.; j <= _NUMFLAKES; j++){
            if (j > _NUMFLAKES/i) break;
            
            float size = 0.002 * i * (1. + rnd(j)/2.);            
            float speed = size * .75 + rnd(i) / 1.5;
            
            vec2 center = vec2(0., 0.);
            center.x = -.3 + rnd(j*i) * 1.4 + 0.1*cos(iTime+sin(j*i));
            center.y = fract(sin(j) + speed * iTime) / 1.3;
            
            col += vec3( (1. - i/_NUMSHEETS) * drawFlake(center, size));
        }
    }
	fragColor = vec4(col,col.r);
}