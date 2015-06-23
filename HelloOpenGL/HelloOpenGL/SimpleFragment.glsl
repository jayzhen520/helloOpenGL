varying lowp vec4 DestinationColor;

varying lowp vec2 TexCoordOut; // New
uniform sampler2D Texture; // New squarewhite
uniform sampler2D Texture2;//just hole
uniform sampler2D Texture3;//panda




void main(void) {
    
    lowp vec4 color1 = texture2D(Texture, TexCoordOut);
    lowp vec4 color2 = texture2D(Texture2, TexCoordOut);
    lowp vec4 color3 = texture2D(Texture3, TexCoordOut); 
    
    //lowp vec4 color = mix(color2, color1, color1.w);
    
    //lowp vec4 color = color1 * color2.a + color3 * (1.0 - color2.a);
    lowp vec4 color = color1 * (1.0 - color2.a) + color2 * color2.a;

    
    //gl_FragColor = DestinationColor * texture2D(Texture, TexCoordOut); // New
    gl_FragColor = color;
}