#define GET_POSITION \
float sceneRawDepth = tex2D(_DepthBuffer, uv).r; \
\
float3 positionWS = GetWorldPositionWithDepth(uv, sceneRawDepth); \
float4 positionCS = mul(PIXELART_CAMERA_MATRIX_VP, float4(positionWS, 1.0));

#define GET_UV_WITH_PRIORITY \
float4 uvInfo = tex2D(_UVBuffer, uv); \
uv = uv + (uvInfo.xy - float2(0.5, 0.5)) * float2(_ScreenParams.z - 1.0, _ScreenParams.w - 1.0); \


#define GET_ALBEDO \
float4 albedo = tex2D(_AlbedoBuffer, uv); \
clip(albedo.a - 0.0001);


#define GET_CONNECTIVITY \
float4 connectInfo = tex2D(_ConnectivityResultBuffer, uv); \
int connectData; \
float fakeFloot = 0.0; \
UnpackFloatInt8bit(connectInfo.a, 256.0, fakeFloot, connectData); \
\
int connectedToRight = (connectData & (1 << 7)) > 0 ? 1 : 0; \
int connectedToLeft = (connectData & (1 << 6)) > 0 ? 1 : 0; \
int connectedToUp = (connectData & (1 << 5)) > 0 ? 1 : 0; \
int connectedToDown = (connectData & (1 << 4)) > 0 ? 1 : 0; \
\
int closerThanRight = (connectData & (1 << 3)) > 0 ? 1 : 0; \
int closerThanLeft = (connectData & (1 << 2)) > 0 ? 1 : 0; \
int closerThanUp = (connectData & (1 << 1)) > 0 ? 1 : 0; \
int closerThanDown = (connectData & (1 << 0)) > 0 ? 1 : 0;


#define GET_PROP \
float4 paletteProp = tex2D(_PalettePropertyBuffer, uv); \
float4 shapeProp = tex2D(_ShapePropertyBuffer, uv); \
float4 physicalProp = tex2D(_PhysicalPropertyBuffer, uv);\
float4 rimLightProp = tex2D(_RimLightPropertyBuffer, uv);

#define GET_LIGHTMAP_UV \
float4 UVInfo = tex2D(_LightmapUVBuffer, uv); \
float2 staticLightmapUV = UVInfo.xy; \
float2 dynamicLightmapUV = UVInfo.zw; \

#define GET_NORMAL0 \
float3 rawNormalWS = tex2D(_Normal0Buffer, uv).xyz;

#define GET_NORMAL1 \
float3 normalWS = tex2D(_Normal1Buffer, uv).xyz;