varying lowp vec4 DestinationColor;

varying lowp vec2 TexCoordOut; // New
uniform sampler2D Texture; // New squarewhite
uniform sampler2D Texture2;//just hole




void main(void) {
    
    lowp vec4 color1 = texture2D(Texture, TexCoordOut);
    lowp vec4 color2 = texture2D(Texture2, TexCoordOut);
    
    lowp vec4 color = color1 * (1.0 - color2.a) + color2 * color2.a;

    gl_FragColor = color;
}