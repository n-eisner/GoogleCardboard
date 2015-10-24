#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 textureCoordinate;
uniform samplerExternalOES s_texture;
void main(void) {
    gl_FragColor = texture2D( s_texture, textureCoordinate );
    float gray = dot(gl_FragColor.rgb, vec3(0.299, 0.587, 0.114));
    gl_FragColor = vec4(gray, gray, gray, gl_FragColor.a);
}
