// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 VARTextureSize;
COMPAT_VARYING     vec2 VARcosangle;
COMPAT_VARYING     vec2 VARsinangle;
COMPAT_VARYING     vec3 VARstretch;
COMPAT_VARYING     vec2 VARilfac;
COMPAT_VARYING     float VARmod_factor;
COMPAT_VARYING     vec2 VARone;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     vec2 _tex_coord;
struct input_dummy {
    vec2 _tex_coord;
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord1;
    vec2 VARone;
    float VARmod_factor;
    vec2 VARilfac;
    vec3 VARstretch;
    vec2 VARsinangle;
    vec2 VARcosangle;
    vec2 VARTextureSize;
};
out_vertex _ret_0;
float _TMP1;
float _TMP12;
float _TMP11;
vec2 _TMP10;
vec2 _TMP9;
float _TMP25;
float _TMP24;
float _TMP23;
float _TMP22;
float _TMP21;
float _TMP20;
float _TMP29;
vec2 _TMP8;
vec2 _TMP7;
float _TMP19;
float _TMP18;
float _TMP17;
float _TMP30;
float _TMP16;
float _TMP15;
float _TMP14;
float _TMP13;
float _TMP28;
float _TMP27;
float _TMP26;
float _TMP6;
float _TMP5;
float _TMP4;
float _TMP3;
input_dummy _IN1;
vec4 _r0037;
vec2 _c0051;
vec2 _lo0051;
vec2 _hi0051;
vec2 _TMP330051;
float _c0053;
vec2 _xy0053;
vec2 _point0053;
vec2 _tang0053;
vec2 _poc0053;
float _A0053;
float _B0053;
float _C0053;
float _a0053;
vec2 _uv0053;
float _r0053;
float _A0055;
float _B0055;
float _C0055;
float _a0061;
float _a0071;
float _negate0075;
float _x0075;
float _ret0075;
float _a0079;
float _a0083;
float _a0087;
vec2 _uv0089;
float _r0089;
float _x0089;
float _D0089;
float _a0101;
float _a0103;
vec2 _uv0107;
float _r0107;
float _x0107;
float _D0107;
float _a0119;
float _a0121;
vec2 _uv0125;
float _r0125;
float _x0125;
float _D0125;
float _a0137;
float _a0139;
vec2 _uv0143;
float _r0143;
float _x0143;
float _D0143;
float _a0155;
float _a0157;
float _a0161;
float _b0161;
float _x0163;
float _TMP164;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    _r0037 = VertexCoord.x*MVPMatrix[0];
    _r0037 = _r0037 + VertexCoord.y*MVPMatrix[1];
    _r0037 = _r0037 + VertexCoord.z*MVPMatrix[2];
    _r0037 = _r0037 + VertexCoord.w*MVPMatrix[3];
    _TMP3 = sin(0.00000000E+00);
    _TMP4 = sin(0.00000000E+00);
    _OUT.VARsinangle = vec2(_TMP3, _TMP4);
    _TMP5 = cos(0.00000000E+00);
    _TMP6 = cos(0.00000000E+00);
    _OUT.VARcosangle = vec2(_TMP5, _TMP6);
    _xy0053 = (-2.00000000E+00*_OUT.VARsinangle)/(1.00000000E+00 + 1.33333337E+00*_OUT.VARcosangle.x*_OUT.VARcosangle.y);
    _TMP26 = dot(_xy0053, _xy0053);
    _A0055 = _TMP26 + 2.25000000E+00;
    _TMP27 = dot(_xy0053, _OUT.VARsinangle);
    _B0055 = 2.00000000E+00*(2.00000000E+00*(_TMP27 - 1.50000000E+00*_OUT.VARcosangle.x*_OUT.VARcosangle.y) - 2.25000000E+00);
    _C0055 = 2.25000000E+00 + 6.00000000E+00*_OUT.VARcosangle.x*_OUT.VARcosangle.y;
    _a0061 = _B0055*_B0055 - 4.00000000E+00*_A0055*_C0055;
    _TMP29 = inversesqrt(_a0061);
    _TMP28 = 1.00000000E+00/_TMP29;
    _c0053 = (-_B0055 - _TMP28)/(2.00000000E+00*_A0055);
    _point0053 = vec2(_c0053, _c0053)*_xy0053;
    _point0053 = _point0053 - vec2( -2.00000000E+00, -2.00000000E+00)*_OUT.VARsinangle;
    _point0053 = _point0053/vec2( 2.00000000E+00, 2.00000000E+00);
    _tang0053 = _OUT.VARsinangle/_OUT.VARcosangle;
    _poc0053 = _point0053/_OUT.VARcosangle;
    _TMP13 = dot(_tang0053, _tang0053);
    _A0053 = _TMP13 + 1.00000000E+00;
    _TMP14 = dot(_poc0053, _tang0053);
    _B0053 = -2.00000000E+00*_TMP14;
    _TMP15 = dot(_poc0053, _poc0053);
    _C0053 = _TMP15 - 1.00000000E+00;
    _a0071 = _B0053*_B0053 - 4.00000000E+00*_A0053*_C0053;
    _TMP29 = inversesqrt(_a0071);
    _TMP16 = 1.00000000E+00/_TMP29;
    _a0053 = (-_B0053 + _TMP16)/(2.00000000E+00*_A0053);
    _uv0053 = (_point0053 - _a0053*_OUT.VARsinangle)/_OUT.VARcosangle;
    _negate0075 = float((_a0053 < 0.00000000E+00));
    _x0075 = abs(_a0053);
    _ret0075 = -1.87292993E-02*_x0075;
    _ret0075 = _ret0075 + 7.42610022E-02;
    _ret0075 = _ret0075*_x0075;
    _ret0075 = _ret0075 - 2.12114394E-01;
    _ret0075 = _ret0075*_x0075;
    _ret0075 = _ret0075 + 1.57072902E+00;
    _a0079 = 1.00000000E+00 - _x0075;
    _TMP29 = inversesqrt(_a0079);
    _TMP30 = 1.00000000E+00/_TMP29;
    _ret0075 = _ret0075*_TMP30;
    _ret0075 = _ret0075 - 2.00000000E+00*_negate0075*_ret0075;
    _TMP17 = _negate0075*3.14159298E+00 + _ret0075;
    _a0083 = 2.00000000E+00*_TMP17;
    _TMP18 = abs(_a0083);
    _r0053 = max(_TMP18, 9.99999975E-06);
    _a0087 = _r0053/2.00000000E+00;
    _TMP19 = sin(_a0087);
    _c0051 = (_uv0053*_r0053)/_TMP19;
    _uv0089 = vec2(-5.00000000E-01, _c0051.y);
    _TMP20 = dot(_uv0089, _uv0089);
    _TMP29 = inversesqrt(_TMP20);
    _TMP21 = 1.00000000E+00/_TMP29;
    _TMP22 = abs(_TMP21);
    _r0089 = max(_TMP22, 9.99999975E-06);
    _a0101 = _r0089/2.00000000E+00;
    _TMP23 = sin(_a0101);
    _uv0089 = _uv0089*(_TMP23/_r0089);
    _a0103 = _r0089/2.00000000E+00;
    _TMP24 = cos(_a0103);
    _x0089 = 1.00000000E+00 - _TMP24;
    _TMP25 = dot(_uv0089, _OUT.VARsinangle);
    _D0089 = 7.50000000E-01 + _x0089*_OUT.VARcosangle.x*_OUT.VARcosangle.y + _TMP25;
    _TMP7 = (1.50000000E+00*(_uv0089*_OUT.VARcosangle - _x0089*_OUT.VARsinangle))/_D0089;
    _uv0107 = vec2(_c0051.x, -3.75000000E-01);
    _TMP20 = dot(_uv0107, _uv0107);
    _TMP29 = inversesqrt(_TMP20);
    _TMP21 = 1.00000000E+00/_TMP29;
    _TMP22 = abs(_TMP21);
    _r0107 = max(_TMP22, 9.99999975E-06);
    _a0119 = _r0107/2.00000000E+00;
    _TMP23 = sin(_a0119);
    _uv0107 = _uv0107*(_TMP23/_r0107);
    _a0121 = _r0107/2.00000000E+00;
    _TMP24 = cos(_a0121);
    _x0107 = 1.00000000E+00 - _TMP24;
    _TMP25 = dot(_uv0107, _OUT.VARsinangle);
    _D0107 = 7.50000000E-01 + _x0107*_OUT.VARcosangle.x*_OUT.VARcosangle.y + _TMP25;
    _TMP8 = (1.50000000E+00*(_uv0107*_OUT.VARcosangle - _x0107*_OUT.VARsinangle))/_D0107;
    _lo0051 = vec2(_TMP7.x, _TMP8.y)/vec2( 1.00000000E+00, 7.50000000E-01);
    _uv0125 = vec2(5.00000000E-01, _c0051.y);
    _TMP20 = dot(_uv0125, _uv0125);
    _TMP29 = inversesqrt(_TMP20);
    _TMP21 = 1.00000000E+00/_TMP29;
    _TMP22 = abs(_TMP21);
    _r0125 = max(_TMP22, 9.99999975E-06);
    _a0137 = _r0125/2.00000000E+00;
    _TMP23 = sin(_a0137);
    _uv0125 = _uv0125*(_TMP23/_r0125);
    _a0139 = _r0125/2.00000000E+00;
    _TMP24 = cos(_a0139);
    _x0125 = 1.00000000E+00 - _TMP24;
    _TMP25 = dot(_uv0125, _OUT.VARsinangle);
    _D0125 = 7.50000000E-01 + _x0125*_OUT.VARcosangle.x*_OUT.VARcosangle.y + _TMP25;
    _TMP9 = (1.50000000E+00*(_uv0125*_OUT.VARcosangle - _x0125*_OUT.VARsinangle))/_D0125;
    _uv0143 = vec2(_c0051.x, 3.75000000E-01);
    _TMP20 = dot(_uv0143, _uv0143);
    _TMP29 = inversesqrt(_TMP20);
    _TMP21 = 1.00000000E+00/_TMP29;
    _TMP22 = abs(_TMP21);
    _r0143 = max(_TMP22, 9.99999975E-06);
    _a0155 = _r0143/2.00000000E+00;
    _TMP23 = sin(_a0155);
    _uv0143 = _uv0143*(_TMP23/_r0143);
    _a0157 = _r0143/2.00000000E+00;
    _TMP24 = cos(_a0157);
    _x0143 = 1.00000000E+00 - _TMP24;
    _TMP25 = dot(_uv0143, _OUT.VARsinangle);
    _D0143 = 7.50000000E-01 + _x0143*_OUT.VARcosangle.x*_OUT.VARcosangle.y + _TMP25;
    _TMP10 = (1.50000000E+00*(_uv0143*_OUT.VARcosangle - _x0143*_OUT.VARsinangle))/_D0143;
    _hi0051 = vec2(_TMP9.x, _TMP10.y)/vec2( 1.00000000E+00, 7.50000000E-01);
    _a0161 = _hi0051.x - _lo0051.x;
    _b0161 = _hi0051.y - _lo0051.y;
    _TMP11 = max(_a0161, _b0161);
    _TMP330051 = ((_hi0051 + _lo0051)*vec2( 1.00000000E+00, 7.50000000E-01))*5.00000000E-01;
    _OUT.VARstretch = vec3(_TMP330051.x, _TMP330051.y, _TMP11);
    _OUT.VARTextureSize = vec2(TextureSize.x, TextureSize.y);
    _x0163 = InputSize.y/2.00000000E+02;
    _TMP1 = floor(_x0163);
    _TMP12 = min(2.00000000E+00, _TMP1);
    _TMP164 = max(1.00000000E+00, _TMP12);
    _OUT.VARilfac = vec2(1.00000000E+00, _TMP164);
    _OUT.VARone = _OUT.VARilfac/_OUT.VARTextureSize;
    _OUT.VARmod_factor = (TexCoord.x*TextureSize.x*OutputSize.x)/InputSize.x;
    _ret_0._position1 = _r0037;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord1 = TexCoord.xy;
    VARone = _OUT.VARone;
    VARmod_factor = _OUT.VARmod_factor;
    VARilfac = _OUT.VARilfac;
    VARstretch = _OUT.VARstretch;
    VARsinangle = _OUT.VARsinangle;
    VARcosangle = _OUT.VARcosangle;
    VARTextureSize = _OUT.VARTextureSize;
    gl_Position = _r0037;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord1;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 VARTextureSize;
COMPAT_VARYING     vec2 VARcosangle;
COMPAT_VARYING     vec2 VARsinangle;
COMPAT_VARYING     vec3 VARstretch;
COMPAT_VARYING     vec2 VARilfac;
COMPAT_VARYING     float VARmod_factor;
COMPAT_VARYING     vec2 VARone;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec2 _tex_coord;
struct input_dummy {
    vec2 _tex_coord;
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
};
struct out_vertex {
    vec4 _color1;
    vec2 _texCoord;
    vec2 VARone;
    float VARmod_factor;
    vec2 VARilfac;
    vec3 VARstretch;
    vec2 VARsinangle;
    vec2 VARcosangle;
    vec2 VARTextureSize;
};
vec4 _ret_0;
float _TMP65;
float _TMP64;
float _TMP63;
float _TMP36;
float _TMP49;
float _TMP48;
float _TMP47;
float _TMP46;
vec4 _TMP34;
float _TMP33;
vec4 _TMP61;
float _TMP57;
float _TMP56;
float _TMP55;
float _TMP54;
vec4 _TMP60;
float _TMP73;
float _TMP72;
float _TMP71;
float _TMP70;
vec4 _TMP59;
vec4 _TMP32;
float _TMP31;
vec4 _TMP30;
float _TMP29;
vec4 _TMP28;
vec4 _TMP58;
vec4 _TMP26;
vec4 _TMP24;
vec4 _TMP22;
vec4 _TMP20;
vec4 _TMP25;
vec4 _TMP23;
vec4 _TMP21;
vec4 _TMP19;
vec4 _TMP17;
vec4 _TMP15;
vec4 _TMP13;
vec4 _TMP11;
vec4 _TMP16;
vec4 _TMP14;
vec4 _TMP12;
vec4 _TMP10;
float _TMP9;
vec4 _TMP8;
vec4 _TMP7;
float _TMP53;
float _TMP52;
float _TMP51;
float _TMP50;
vec4 _TMP6;
vec2 _TMP5;
float _TMP4;
float _TMP45;
float _TMP3;
float _TMP44;
vec2 _TMP2;
vec2 _TMP1;
vec2 _TMP0;
float _TMP43;
float _TMP42;
float _TMP41;
float _TMP69;
float _TMP40;
float _TMP39;
float _TMP38;
float _TMP37;
float _TMP68;
float _TMP67;
float _TMP66;
out_vertex _VAR1;
input_dummy _IN1;
uniform sampler2D Texture;
float _c0081;
vec2 _point0081;
vec2 _tang0081;
vec2 _poc0081;
float _A0081;
float _B0081;
float _C0081;
float _a0081;
vec2 _uv0081;
float _r0081;
float _A0083;
float _B0083;
float _C0083;
float _a0089;
float _a0099;
float _negate0103;
float _x0103;
float _ret0103;
float _a0107;
float _a0111;
float _a0115;
vec2 _b0117;
float _TMP126;
float _x0127;
float _c0133;
float _a0135;
vec4 _TMP146;
vec4 _x0161;
vec2 _c0173;
vec2 _c0197;
vec2 _c0209;
vec4 _r0221;
vec4 _TMP222;
vec2 _c0229;
vec2 _c0241;
vec2 _c0253;
vec2 _c0265;
vec4 _r0277;
vec4 _TMP278;
vec4 _wid0285;
vec4 _weights0285;
vec4 _x0297;
vec4 _a0307;
vec4 _TMP316;
vec4 _x0317;
vec4 _wid0329;
vec4 _weights0329;
float _distance0329;
vec4 _x0341;
vec4 _a0351;
vec4 _TMP360;
vec4 _x0361;
vec4 _wid0373;
vec4 _weights0373;
vec4 _x0385;
vec4 _a0395;
vec4 _TMP404;
vec4 _x0405;
float _a0417;
vec4 _wid0419;
vec4 _weights0419;
vec4 _x0431;
vec4 _a0441;
vec4 _TMP450;
vec4 _x0451;
vec4 _wid0465;
vec4 _weights0465;
vec4 _x0477;
vec4 _a0487;
vec4 _TMP496;
vec4 _x0497;
float _a0509;
vec4 _wid0511;
vec4 _weights0511;
vec4 _x0523;
vec4 _a0533;
vec4 _TMP542;
vec4 _x0543;
float _c0555;
float _a0557;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _xy2;
    vec2 _cd1;
    vec2 _cd2;
    float _dist;
    vec2 _ilfloat;
    vec2 _ratio_scale;
    float _filter;
    vec2 _uv_ratio;
    vec4 _coeffs;
    vec4 _weights1;
    vec4 _weights2;
    vec3 _mul_res;
    vec3 _dotMaskWeights;
    _cd1 = TEX0.xy*(TextureSize/InputSize);
    _cd1 = ((_cd1 - vec2( 5.00000000E-01, 5.00000000E-01))*vec2( 1.00000000E+00, 7.50000000E-01))*VARstretch.z + VARstretch.xy;
    _TMP66 = dot(_cd1, _cd1);
    _A0083 = _TMP66 + 2.25000000E+00;
    _TMP67 = dot(_cd1, VARsinangle);
    _B0083 = 2.00000000E+00*(2.00000000E+00*(_TMP67 - 1.50000000E+00*VARcosangle.x*VARcosangle.y) - 2.25000000E+00);
    _C0083 = 2.25000000E+00 + 6.00000000E+00*VARcosangle.x*VARcosangle.y;
    _a0089 = _B0083*_B0083 - 4.00000000E+00*_A0083*_C0083;
    _TMP44 = inversesqrt(_a0089);
    _TMP68 = 1.00000000E+00/_TMP44;
    _c0081 = (-_B0083 - _TMP68)/(2.00000000E+00*_A0083);
    _point0081 = vec2(_c0081, _c0081)*_cd1;
    _point0081 = _point0081 - vec2( -2.00000000E+00, -2.00000000E+00)*VARsinangle;
    _point0081 = _point0081/vec2( 2.00000000E+00, 2.00000000E+00);
    _tang0081 = VARsinangle/VARcosangle;
    _poc0081 = _point0081/VARcosangle;
    _TMP37 = dot(_tang0081, _tang0081);
    _A0081 = _TMP37 + 1.00000000E+00;
    _TMP38 = dot(_poc0081, _tang0081);
    _B0081 = -2.00000000E+00*_TMP38;
    _TMP39 = dot(_poc0081, _poc0081);
    _C0081 = _TMP39 - 1.00000000E+00;
    _a0099 = _B0081*_B0081 - 4.00000000E+00*_A0081*_C0081;
    _TMP44 = inversesqrt(_a0099);
    _TMP40 = 1.00000000E+00/_TMP44;
    _a0081 = (-_B0081 + _TMP40)/(2.00000000E+00*_A0081);
    _uv0081 = (_point0081 - _a0081*VARsinangle)/VARcosangle;
    _negate0103 = float((_a0081 < 0.00000000E+00));
    _x0103 = abs(_a0081);
    _ret0103 = -1.87292993E-02*_x0103;
    _ret0103 = _ret0103 + 7.42610022E-02;
    _ret0103 = _ret0103*_x0103;
    _ret0103 = _ret0103 - 2.12114394E-01;
    _ret0103 = _ret0103*_x0103;
    _ret0103 = _ret0103 + 1.57072902E+00;
    _a0107 = 1.00000000E+00 - _x0103;
    _TMP44 = inversesqrt(_a0107);
    _TMP69 = 1.00000000E+00/_TMP44;
    _ret0103 = _ret0103*_TMP69;
    _ret0103 = _ret0103 - 2.00000000E+00*_negate0103*_ret0103;
    _TMP41 = _negate0103*3.14159298E+00 + _ret0103;
    _a0111 = 2.00000000E+00*_TMP41;
    _TMP42 = abs(_a0111);
    _r0081 = max(_TMP42, 9.99999975E-06);
    _a0115 = _r0081/2.00000000E+00;
    _TMP43 = sin(_a0115);
    _TMP0 = (_uv0081*_r0081)/_TMP43;
    _xy2 = ((_TMP0/vec2( 1.00000000E+00, 7.50000000E-01) + vec2( 5.00000000E-01, 5.00000000E-01))*InputSize)/TextureSize;
    _cd2 = _xy2*(TextureSize/InputSize);
    _cd2 = (_cd2 - vec2( 5.00000000E-01, 5.00000000E-01)) + vec2( 5.00000000E-01, 5.00000000E-01);
    _b0117 = vec2( 1.00000000E+00, 1.00000000E+00) - _cd2;
    _TMP1 = min(_cd2, _b0117);
    _cd2 = _TMP1*vec2( 1.00000000E+00, 7.50000000E-01);
    _TMP2 = min(_cd2, vec2( 2.99999993E-02, 2.99999993E-02));
    _cd2 = vec2( 2.99999993E-02, 2.99999993E-02) - _TMP2;
    _TMP3 = dot(_cd2, _cd2);
    _TMP44 = inversesqrt(_TMP3);
    _dist = 1.00000000E+00/_TMP44;
    _x0127 = (2.99999993E-02 - _dist)*1.00000000E+03;
    _TMP45 = min(1.00000000E+00, _x0127);
    _TMP126 = max(0.00000000E+00, _TMP45);
    if (VARilfac.y > 1.50000000E+00) { 
        _a0135 = float(FrameCount)/2.00000000E+00;
        _TMP46 = abs(_a0135);
        _TMP47 = fract(_TMP46);
        _TMP48 = abs(2.00000000E+00);
        _c0133 = _TMP47*_TMP48;
        if (float(FrameCount) < 0.00000000E+00) { 
            _TMP49 = -_c0133;
        } else {
            _TMP49 = _c0133;
        } 
        _TMP4 = _TMP49;
    } else {
        _TMP4 = 0.00000000E+00;
    } 
    _ilfloat = vec2(0.00000000E+00, _TMP4);
    _ratio_scale = ((_xy2*VARTextureSize - vec2( 5.00000000E-01, 5.00000000E-01)) + _ilfloat)/VARilfac;
    _filter = InputSize.y/OutputSize.y;
    _uv_ratio = fract(_ratio_scale);
    _TMP5 = floor(_ratio_scale);
    _xy2 = ((_TMP5*VARilfac + vec2( 5.00000000E-01, 5.00000000E-01)) - _ilfloat)/VARTextureSize;
    _coeffs = 3.14159274E+00*vec4(1.00000000E+00 + _uv_ratio.x, _uv_ratio.x, 1.00000000E+00 - _uv_ratio.x, 2.00000000E+00 - _uv_ratio.x);
    _TMP6 = abs(_coeffs);
    _TMP146 = max(_TMP6, vec4( 9.99999975E-06, 9.99999975E-06, 9.99999975E-06, 9.99999975E-06));
    _TMP50 = sin(_TMP146.x);
    _TMP51 = sin(_TMP146.y);
    _TMP52 = sin(_TMP146.z);
    _TMP53 = sin(_TMP146.w);
    _TMP7 = vec4(_TMP50, _TMP51, _TMP52, _TMP53);
    _x0161 = _TMP146/2.00000000E+00;
    _TMP50 = sin(_x0161.x);
    _TMP51 = sin(_x0161.y);
    _TMP52 = sin(_x0161.z);
    _TMP53 = sin(_x0161.w);
    _TMP8 = vec4(_TMP50, _TMP51, _TMP52, _TMP53);
    _coeffs = ((2.00000000E+00*_TMP7)*_TMP8)/(_TMP146*_TMP146);
    _TMP9 = dot(_coeffs, vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _coeffs = _coeffs/_TMP9;
    _c0173 = _xy2 + vec2(-VARone.x, 0.00000000E+00);
    _TMP10 = COMPAT_TEXTURE(Texture, _c0173);
    _TMP54 = pow(_TMP10.x, 2.40000010E+00);
    _TMP55 = pow(_TMP10.y, 2.40000010E+00);
    _TMP56 = pow(_TMP10.z, 2.40000010E+00);
    _TMP57 = pow(_TMP10.w, 2.40000010E+00);
    _TMP11 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _TMP12 = COMPAT_TEXTURE(Texture, _xy2);
    _TMP54 = pow(_TMP12.x, 2.40000010E+00);
    _TMP55 = pow(_TMP12.y, 2.40000010E+00);
    _TMP56 = pow(_TMP12.z, 2.40000010E+00);
    _TMP57 = pow(_TMP12.w, 2.40000010E+00);
    _TMP13 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _c0197 = _xy2 + vec2(VARone.x, 0.00000000E+00);
    _TMP14 = COMPAT_TEXTURE(Texture, _c0197);
    _TMP54 = pow(_TMP14.x, 2.40000010E+00);
    _TMP55 = pow(_TMP14.y, 2.40000010E+00);
    _TMP56 = pow(_TMP14.z, 2.40000010E+00);
    _TMP57 = pow(_TMP14.w, 2.40000010E+00);
    _TMP15 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _c0209 = _xy2 + vec2(2.00000000E+00*VARone.x, 0.00000000E+00);
    _TMP16 = COMPAT_TEXTURE(Texture, _c0209);
    _TMP54 = pow(_TMP16.x, 2.40000010E+00);
    _TMP55 = pow(_TMP16.y, 2.40000010E+00);
    _TMP56 = pow(_TMP16.z, 2.40000010E+00);
    _TMP57 = pow(_TMP16.w, 2.40000010E+00);
    _TMP17 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _r0221 = _coeffs.x*_TMP11;
    _r0221 = _r0221 + _coeffs.y*_TMP13;
    _r0221 = _r0221 + _coeffs.z*_TMP15;
    _r0221 = _r0221 + _coeffs.w*_TMP17;
    _TMP58 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _r0221);
    _TMP222 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP58);
    _c0229 = _xy2 + vec2(-VARone.x, VARone.y);
    _TMP19 = COMPAT_TEXTURE(Texture, _c0229);
    _TMP54 = pow(_TMP19.x, 2.40000010E+00);
    _TMP55 = pow(_TMP19.y, 2.40000010E+00);
    _TMP56 = pow(_TMP19.z, 2.40000010E+00);
    _TMP57 = pow(_TMP19.w, 2.40000010E+00);
    _TMP20 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _c0241 = _xy2 + vec2(0.00000000E+00, VARone.y);
    _TMP21 = COMPAT_TEXTURE(Texture, _c0241);
    _TMP54 = pow(_TMP21.x, 2.40000010E+00);
    _TMP55 = pow(_TMP21.y, 2.40000010E+00);
    _TMP56 = pow(_TMP21.z, 2.40000010E+00);
    _TMP57 = pow(_TMP21.w, 2.40000010E+00);
    _TMP22 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _c0253 = _xy2 + VARone;
    _TMP23 = COMPAT_TEXTURE(Texture, _c0253);
    _TMP54 = pow(_TMP23.x, 2.40000010E+00);
    _TMP55 = pow(_TMP23.y, 2.40000010E+00);
    _TMP56 = pow(_TMP23.z, 2.40000010E+00);
    _TMP57 = pow(_TMP23.w, 2.40000010E+00);
    _TMP24 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _c0265 = _xy2 + vec2(2.00000000E+00*VARone.x, VARone.y);
    _TMP25 = COMPAT_TEXTURE(Texture, _c0265);
    _TMP54 = pow(_TMP25.x, 2.40000010E+00);
    _TMP55 = pow(_TMP25.y, 2.40000010E+00);
    _TMP56 = pow(_TMP25.z, 2.40000010E+00);
    _TMP57 = pow(_TMP25.w, 2.40000010E+00);
    _TMP26 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _r0277 = _coeffs.x*_TMP20;
    _r0277 = _r0277 + _coeffs.y*_TMP22;
    _r0277 = _r0277 + _coeffs.z*_TMP24;
    _r0277 = _r0277 + _coeffs.w*_TMP26;
    _TMP58 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _r0277);
    _TMP278 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP58);
    _TMP54 = pow(_TMP222.x, 4.00000000E+00);
    _TMP55 = pow(_TMP222.y, 4.00000000E+00);
    _TMP56 = pow(_TMP222.z, 4.00000000E+00);
    _TMP57 = pow(_TMP222.w, 4.00000000E+00);
    _TMP59 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _wid0285 = 2.00000000E+00 + 2.00000000E+00*_TMP59;
    _weights0285 = vec4(_uv_ratio.y/3.00000012E-01, _uv_ratio.y/3.00000012E-01, _uv_ratio.y/3.00000012E-01, _uv_ratio.y/3.00000012E-01);
    _x0297 = 5.00000000E-01*_wid0285;
    _TMP70 = inversesqrt(_x0297.x);
    _TMP71 = inversesqrt(_x0297.y);
    _TMP72 = inversesqrt(_x0297.z);
    _TMP73 = inversesqrt(_x0297.w);
    _TMP60 = vec4(_TMP70, _TMP71, _TMP72, _TMP73);
    _a0307 = _weights0285*_TMP60;
    _TMP54 = pow(_a0307.x, _wid0285.x);
    _TMP55 = pow(_a0307.y, _wid0285.y);
    _TMP56 = pow(_a0307.z, _wid0285.z);
    _TMP57 = pow(_a0307.w, _wid0285.w);
    _TMP61 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _x0317 = -_TMP61;
    _TMP54 = pow(2.71828198E+00, _x0317.x);
    _TMP55 = pow(2.71828198E+00, _x0317.y);
    _TMP56 = pow(2.71828198E+00, _x0317.z);
    _TMP57 = pow(2.71828198E+00, _x0317.w);
    _TMP316 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _weights1 = (1.39999998E+00*_TMP316)/(6.00000024E-01 + 2.00000003E-01*_wid0285);
    _distance0329 = 1.00000000E+00 - _uv_ratio.y;
    _TMP54 = pow(_TMP278.x, 4.00000000E+00);
    _TMP55 = pow(_TMP278.y, 4.00000000E+00);
    _TMP56 = pow(_TMP278.z, 4.00000000E+00);
    _TMP57 = pow(_TMP278.w, 4.00000000E+00);
    _TMP59 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _wid0329 = 2.00000000E+00 + 2.00000000E+00*_TMP59;
    _weights0329 = vec4(_distance0329/3.00000012E-01, _distance0329/3.00000012E-01, _distance0329/3.00000012E-01, _distance0329/3.00000012E-01);
    _x0341 = 5.00000000E-01*_wid0329;
    _TMP70 = inversesqrt(_x0341.x);
    _TMP71 = inversesqrt(_x0341.y);
    _TMP72 = inversesqrt(_x0341.z);
    _TMP73 = inversesqrt(_x0341.w);
    _TMP60 = vec4(_TMP70, _TMP71, _TMP72, _TMP73);
    _a0351 = _weights0329*_TMP60;
    _TMP54 = pow(_a0351.x, _wid0329.x);
    _TMP55 = pow(_a0351.y, _wid0329.y);
    _TMP56 = pow(_a0351.z, _wid0329.z);
    _TMP57 = pow(_a0351.w, _wid0329.w);
    _TMP61 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _x0361 = -_TMP61;
    _TMP54 = pow(2.71828198E+00, _x0361.x);
    _TMP55 = pow(2.71828198E+00, _x0361.y);
    _TMP56 = pow(2.71828198E+00, _x0361.z);
    _TMP57 = pow(2.71828198E+00, _x0361.w);
    _TMP360 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _weights2 = (1.39999998E+00*_TMP360)/(6.00000024E-01 + 2.00000003E-01*_wid0329);
    _uv_ratio.y = _uv_ratio.y + 3.33333343E-01*_filter;
    _TMP54 = pow(_TMP222.x, 4.00000000E+00);
    _TMP55 = pow(_TMP222.y, 4.00000000E+00);
    _TMP56 = pow(_TMP222.z, 4.00000000E+00);
    _TMP57 = pow(_TMP222.w, 4.00000000E+00);
    _TMP59 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _wid0373 = 2.00000000E+00 + 2.00000000E+00*_TMP59;
    _weights0373 = vec4(_uv_ratio.y/3.00000012E-01, _uv_ratio.y/3.00000012E-01, _uv_ratio.y/3.00000012E-01, _uv_ratio.y/3.00000012E-01);
    _x0385 = 5.00000000E-01*_wid0373;
    _TMP70 = inversesqrt(_x0385.x);
    _TMP71 = inversesqrt(_x0385.y);
    _TMP72 = inversesqrt(_x0385.z);
    _TMP73 = inversesqrt(_x0385.w);
    _TMP60 = vec4(_TMP70, _TMP71, _TMP72, _TMP73);
    _a0395 = _weights0373*_TMP60;
    _TMP54 = pow(_a0395.x, _wid0373.x);
    _TMP55 = pow(_a0395.y, _wid0373.y);
    _TMP56 = pow(_a0395.z, _wid0373.z);
    _TMP57 = pow(_a0395.w, _wid0373.w);
    _TMP61 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _x0405 = -_TMP61;
    _TMP54 = pow(2.71828198E+00, _x0405.x);
    _TMP55 = pow(2.71828198E+00, _x0405.y);
    _TMP56 = pow(2.71828198E+00, _x0405.z);
    _TMP57 = pow(2.71828198E+00, _x0405.w);
    _TMP404 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _TMP28 = (1.39999998E+00*_TMP404)/(6.00000024E-01 + 2.00000003E-01*_wid0373);
    _weights1 = (_weights1 + _TMP28)/3.00000000E+00;
    _a0417 = 1.00000000E+00 - _uv_ratio.y;
    _TMP29 = abs(_a0417);
    _TMP54 = pow(_TMP278.x, 4.00000000E+00);
    _TMP55 = pow(_TMP278.y, 4.00000000E+00);
    _TMP56 = pow(_TMP278.z, 4.00000000E+00);
    _TMP57 = pow(_TMP278.w, 4.00000000E+00);
    _TMP59 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _wid0419 = 2.00000000E+00 + 2.00000000E+00*_TMP59;
    _weights0419 = vec4(_TMP29/3.00000012E-01, _TMP29/3.00000012E-01, _TMP29/3.00000012E-01, _TMP29/3.00000012E-01);
    _x0431 = 5.00000000E-01*_wid0419;
    _TMP70 = inversesqrt(_x0431.x);
    _TMP71 = inversesqrt(_x0431.y);
    _TMP72 = inversesqrt(_x0431.z);
    _TMP73 = inversesqrt(_x0431.w);
    _TMP60 = vec4(_TMP70, _TMP71, _TMP72, _TMP73);
    _a0441 = _weights0419*_TMP60;
    _TMP54 = pow(_a0441.x, _wid0419.x);
    _TMP55 = pow(_a0441.y, _wid0419.y);
    _TMP56 = pow(_a0441.z, _wid0419.z);
    _TMP57 = pow(_a0441.w, _wid0419.w);
    _TMP61 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _x0451 = -_TMP61;
    _TMP54 = pow(2.71828198E+00, _x0451.x);
    _TMP55 = pow(2.71828198E+00, _x0451.y);
    _TMP56 = pow(2.71828198E+00, _x0451.z);
    _TMP57 = pow(2.71828198E+00, _x0451.w);
    _TMP450 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _TMP30 = (1.39999998E+00*_TMP450)/(6.00000024E-01 + 2.00000003E-01*_wid0419);
    _weights2 = (_weights2 + _TMP30)/3.00000000E+00;
    _uv_ratio.y = _uv_ratio.y - 6.66666687E-01*_filter;
    _TMP31 = abs(_uv_ratio.y);
    _TMP54 = pow(_TMP222.x, 4.00000000E+00);
    _TMP55 = pow(_TMP222.y, 4.00000000E+00);
    _TMP56 = pow(_TMP222.z, 4.00000000E+00);
    _TMP57 = pow(_TMP222.w, 4.00000000E+00);
    _TMP59 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _wid0465 = 2.00000000E+00 + 2.00000000E+00*_TMP59;
    _weights0465 = vec4(_TMP31/3.00000012E-01, _TMP31/3.00000012E-01, _TMP31/3.00000012E-01, _TMP31/3.00000012E-01);
    _x0477 = 5.00000000E-01*_wid0465;
    _TMP70 = inversesqrt(_x0477.x);
    _TMP71 = inversesqrt(_x0477.y);
    _TMP72 = inversesqrt(_x0477.z);
    _TMP73 = inversesqrt(_x0477.w);
    _TMP60 = vec4(_TMP70, _TMP71, _TMP72, _TMP73);
    _a0487 = _weights0465*_TMP60;
    _TMP54 = pow(_a0487.x, _wid0465.x);
    _TMP55 = pow(_a0487.y, _wid0465.y);
    _TMP56 = pow(_a0487.z, _wid0465.z);
    _TMP57 = pow(_a0487.w, _wid0465.w);
    _TMP61 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _x0497 = -_TMP61;
    _TMP54 = pow(2.71828198E+00, _x0497.x);
    _TMP55 = pow(2.71828198E+00, _x0497.y);
    _TMP56 = pow(2.71828198E+00, _x0497.z);
    _TMP57 = pow(2.71828198E+00, _x0497.w);
    _TMP496 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _TMP32 = (1.39999998E+00*_TMP496)/(6.00000024E-01 + 2.00000003E-01*_wid0465);
    _weights1 = _weights1 + _TMP32/3.00000000E+00;
    _a0509 = 1.00000000E+00 - _uv_ratio.y;
    _TMP33 = abs(_a0509);
    _TMP54 = pow(_TMP278.x, 4.00000000E+00);
    _TMP55 = pow(_TMP278.y, 4.00000000E+00);
    _TMP56 = pow(_TMP278.z, 4.00000000E+00);
    _TMP57 = pow(_TMP278.w, 4.00000000E+00);
    _TMP59 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _wid0511 = 2.00000000E+00 + 2.00000000E+00*_TMP59;
    _weights0511 = vec4(_TMP33/3.00000012E-01, _TMP33/3.00000012E-01, _TMP33/3.00000012E-01, _TMP33/3.00000012E-01);
    _x0523 = 5.00000000E-01*_wid0511;
    _TMP70 = inversesqrt(_x0523.x);
    _TMP71 = inversesqrt(_x0523.y);
    _TMP72 = inversesqrt(_x0523.z);
    _TMP73 = inversesqrt(_x0523.w);
    _TMP60 = vec4(_TMP70, _TMP71, _TMP72, _TMP73);
    _a0533 = _weights0511*_TMP60;
    _TMP54 = pow(_a0533.x, _wid0511.x);
    _TMP55 = pow(_a0533.y, _wid0511.y);
    _TMP56 = pow(_a0533.z, _wid0511.z);
    _TMP57 = pow(_a0533.w, _wid0511.w);
    _TMP61 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _x0543 = -_TMP61;
    _TMP54 = pow(2.71828198E+00, _x0543.x);
    _TMP55 = pow(2.71828198E+00, _x0543.y);
    _TMP56 = pow(2.71828198E+00, _x0543.z);
    _TMP57 = pow(2.71828198E+00, _x0543.w);
    _TMP542 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _TMP34 = (1.39999998E+00*_TMP542)/(6.00000024E-01 + 2.00000003E-01*_wid0511);
    _weights2 = _weights2 + _TMP34/3.00000000E+00;
    _mul_res = (_TMP222*_weights1 + _TMP278*_weights2).xyz;
    _mul_res = _mul_res*vec3(_TMP126, _TMP126, _TMP126);
    _a0557 = VARmod_factor/2.00000000E+00;
    _TMP46 = abs(_a0557);
    _TMP47 = fract(_TMP46);
    _TMP48 = abs(2.00000000E+00);
    _c0555 = _TMP47*_TMP48;
    if (VARmod_factor < 0.00000000E+00) { 
        _TMP49 = -_c0555;
    } else {
        _TMP49 = _c0555;
    } 
    _TMP36 = floor(_TMP49);
    _dotMaskWeights = vec3( 1.00000000E+00, 6.99999988E-01, 1.00000000E+00) + _TMP36*vec3( -3.00000012E-01, 3.00000012E-01, -3.00000012E-01);
    _mul_res = _mul_res*_dotMaskWeights;
    _TMP63 = pow(_mul_res.x, 4.54545438E-01);
    _TMP64 = pow(_mul_res.y, 4.54545438E-01);
    _TMP65 = pow(_mul_res.z, 4.54545438E-01);
    _mul_res = vec3(_TMP63, _TMP64, _TMP65);
    _ret_0 = vec4(_mul_res.x, _mul_res.y, _mul_res.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif