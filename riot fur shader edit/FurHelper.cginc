// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

#include "UnityCG.cginc"
#include "Lighting.cginc"
#include "AutoLight.cginc"
#define RALIV_ORIFICE;
#define RALIV_PENETRATOR;
#include "RalivDPS_Defines.cginc"
#include "RalivDPS_Functions.cginc"
#include "VertexIntersection.cginc"
#include "VectorFlow_util.cginc"



struct appdata
{
	float4 vertex	: POSITION;
	float3 normal : NORMAL;
	float4 tangent : TANGENT;
	float2 uv : TEXCOORD0;
	float4 texcoord1 : TEXCOORD1;
	float3 texcoord2 : TEXCOORD2;
	float3 texcoord3 : TEXCOORD3;
	float4 texcoord0 : TEXCOORD4;
	fixed4 color : COLOR;
	UNITY_VERTEX_INPUT_INSTANCE_ID
	uint vertexId : SV_VertexID;

};
struct v2f
{
	
	float4 pos        : SV_POSITION;
	float2 uv : TEXCOORD0;
	float2 uv0 : TEXCOORD1;
	float4 uv1 : TEXCOORD2;
	float3 uv2 : TEXCOORD3;
	float3 uv3 : TEXCOORD4;
    float3 normalDir : TEXCOORD5;
    float3 tangentDir : TEXCOORD6;
    float3 bitangentDir : TEXCOORD7;
	float4 worldPos : TEXCOORD8;
	float4 normal        : TEXCOORD9;
	float3 normalDirCalc : TEXCOORD10;
	#if defined(USE_SHADOWS) && (defined(SHADOWS_SCREEN) || defined(SHADOWS_DEPTH) || defined(SHADOWS_CUBE))
		UNITY_SHADOW_COORDS(11)
	#endif
	LIGHTING_COORDS(12,13)
	UNITY_FOG_COORDS(14)
	float4 projPos : TEXCOORD15;
	float2 uv5 : TEXCOORD16;
	float3 vertexLighting : TEXCOORD17;
	UNITY_VERTEX_INPUT_INSTANCE_ID
	UNITY_VERTEX_OUTPUT_STEREO
};

sampler2D _MainTex;
sampler2D _SkinTex;
sampler2D _HeightMap;
sampler2D _FurFuzzheight;

float4 _MainTex_ST;
float4 _SkinTex_ST;
float4 _HeightMap_ST;
float4 _FurFuzzheight_ST;

float4 _FurColor;
float4 _SkinColor;
float _FurTransparency;
float _SkinTransparency;
float _HeightMapBrightness;

float4 _Gravity;
float4 _Velocity;

float _WindStrength;
float _WindSpeed;

float _FurLength;
float _FurStiff;
float _EnableSkin;

float _CullVelocity;
float _CullAngle;

uniform uint _OrificeToggle;
uniform uint _PenetratorToggle;

uniform uint _Furtouch;
uniform uint _TouchShader;

uniform float _BlendShapeMultiplier;


// User-specified properties
uniform float4 _Color2; 
uniform float4 _SpecColor2; 
uniform float _Shininess2;

uniform uint _Flowtoggle;
float4 flow;
sampler2D _FlowTex;
uniform sampler2D _GrabTexture;
float3 Function_node_5527( float3 Dir , float Glossiness ){
half mip = ( 1.0 - Glossiness ) * 6;
half4 skyData = UNITY_SAMPLE_TEXCUBE_LOD( unity_SpecCube0, Dir, mip );
//half4 skyData = texCUBElod( unity_SpecCube0, float4( Dir, float( mip ) ) );
half3 skyColor = DecodeHDR( skyData, unity_SpecCube0_HDR );
return skyColor;

}

uniform samplerCUBE _cube_map;
uniform sampler2D _flow_normal; uniform float4 _flow_normal_ST;
uniform sampler2D _environment_mask; uniform float4 _environment_mask_ST;
uniform sampler2D _color_map; uniform float4 _color_map_ST;
uniform sampler2D _Mask; uniform float4 _Mask_ST;
uniform sampler2D _normal_map; uniform float4 _normal_map_ST;
float3 Function_node_2550( float3 Dir ){
return ShadeSH9(half4(Dir, 1.0));

}

float3 Function_node_9725( half roughness , float3 normal , float3 view_dir , float3 light_dir , float3 light_col ){
return Specular( roughness, normal, view_dir, light_dir, light_col, 0 );

}
UNITY_INSTANCING_BUFFER_START( Props )
	UNITY_DEFINE_INSTANCED_PROP( float4, _flow_vector)
	UNITY_DEFINE_INSTANCED_PROP( float, _flow_speed)
	UNITY_DEFINE_INSTANCED_PROP( float, _flow_length)
	UNITY_DEFINE_INSTANCED_PROP( float, _flow_normal_scale)
	UNITY_DEFINE_INSTANCED_PROP( float, _flow_offset)
	UNITY_DEFINE_INSTANCED_PROP( float, _cube_map_val)
	UNITY_DEFINE_INSTANCED_PROP( float, _skybox_val)
	UNITY_DEFINE_INSTANCED_PROP( float, _fresnel)
	UNITY_DEFINE_INSTANCED_PROP( float4, _color)
	UNITY_DEFINE_INSTANCED_PROP( float, _normal_scale)
	UNITY_DEFINE_INSTANCED_PROP( float4, _environment_color)
	UNITY_DEFINE_INSTANCED_PROP( float, _refraction)
	UNITY_DEFINE_INSTANCED_PROP( float, _alpha_wet_shadow)
	UNITY_DEFINE_INSTANCED_PROP( float, _smoothness)
	UNITY_DEFINE_INSTANCED_PROP( float, _specular)
UNITY_INSTANCING_BUFFER_END( Props )
float4 meowing(v2f i) : COLOR {
	UNITY_SETUP_INSTANCE_ID( i );
	i.normalDir = normalize(i.normalDir);
	float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
	float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.worldPos.xyz);
	float4 node_103 = _Time;
	float _flow_speed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _flow_speed );
	float node_9982 = (node_103.g*_flow_speed_var);
	float node_8513 = frac(node_9982);
	float _flow_offset_var = UNITY_ACCESS_INSTANCED_PROP( Props, _flow_offset );
	float3 _normal_map_var = UnpackNormal(tex2D(_normal_map,TRANSFORM_TEX(i.uv5, _normal_map)));
	float3 node_8081 = _normal_map_var.rgb.rgb;
	float _normal_scale_var = UNITY_ACCESS_INSTANCED_PROP( Props, _normal_scale );
	float3 node_6543 = normalize(float3((float2(node_8081.r,node_8081.g)*_normal_scale_var),node_8081.b));
	float4 _flow_vector_var = UNITY_ACCESS_INSTANCED_PROP( Props, _flow_vector );
	float3 node_9188_nrm_base = node_6543 + float3(0,0,1);
	float3 node_9188_nrm_detail = mul( tangentTransform, _flow_vector_var.rgb ).xyz.rgb * float3(-1,-1,1);
	float3 node_9188_nrm_combined = node_9188_nrm_base*dot(node_9188_nrm_base, node_9188_nrm_detail)/node_9188_nrm_base.z - node_9188_nrm_detail;
	float3 node_9188 = node_9188_nrm_combined;
	float _flow_length_var = UNITY_ACCESS_INSTANCED_PROP( Props, _flow_length );
	float2 node_7648 = (node_9188.rg*float2(-1,-1)*_flow_length_var);
	float2 node_2386 = (((node_8513+_flow_offset_var)*node_7648)+i.uv5);
	float3 node_4185 = UnpackNormal(tex2D(_flow_normal,TRANSFORM_TEX(node_2386, _flow_normal)));
	float2 node_2459 = (((frac((node_9982+0.5))+_flow_offset_var)*node_7648)+i.uv5);
	float3 node_1729 = UnpackNormal(tex2D(_flow_normal,TRANSFORM_TEX(node_2459, _flow_normal)));
	float node_7706 = 0.5;
	float node_9819 = abs(((node_8513-node_7706)/node_7706));
	float3 node_1809 = lerp(node_4185.rgb,node_1729.rgb,node_9819).rgb;
	float _flow_normal_scale_var = UNITY_ACCESS_INSTANCED_PROP( Props, _flow_normal_scale );
	float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv5, _Mask));
	float3 node_9479 = normalize(float3((float2(node_1809.r,node_1809.g)*_flow_normal_scale_var*_Mask_var.r),node_1809.b));
	float3 node_8244_nrm_base = node_9479 + float3(0,0,1);
	float3 node_8244_nrm_detail = node_6543 * float3(-1,-1,1);
	float3 node_8244_nrm_combined = node_8244_nrm_base*dot(node_8244_nrm_base, node_8244_nrm_detail)/node_8244_nrm_base.z - node_8244_nrm_detail;
	float3 node_8244 = node_8244_nrm_combined;
	float3 normalLocal = node_8244;
	float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
	float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
	float partZ = max(0,i.projPos.z - _ProjectionParams.g);
	float2 sceneUVs = (i.projPos.xy / i.projPos.w);
	float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
	float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
	float3 lightColor = _LightColor0.rgb;
	////// Lighting:
	float attenuation = LIGHT_ATTENUATION(i);
	float _fresnel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _fresnel );
	float4 node_5999 = tex2D(_environment_mask,TRANSFORM_TEX(node_2386, _environment_mask));
	float4 node_9723 = tex2D(_environment_mask,TRANSFORM_TEX(node_2459, _environment_mask));
	float3 node_1496 = lerp(node_5999.rgb,node_9723.rgb,node_9819);
	float node_3985 = node_1496.r;
	float _skybox_val_var = UNITY_ACCESS_INSTANCED_PROP( Props, _skybox_val );
	float node_3524 = node_1496.g;
	float _cube_map_val_var = UNITY_ACCESS_INSTANCED_PROP( Props, _cube_map_val );
	float4 _environment_color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _environment_color );
	float _refraction_var = UNITY_ACCESS_INSTANCED_PROP( Props, _refraction );
	float4 node_7694 = tex2D( _GrabTexture, (sceneUVs.rg+(mul( UNITY_MATRIX_V, float4((i.normalDir-mul( node_9479, tangentTransform ).xyz.rgb),0) ).xyz.rgb.rg*_refraction_var*node_3985*dot(i.normalDir,viewDirection)*min((1.0 / partZ),1.0))));
	float4 node_2990_k = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
	float4 node_2990_p = lerp(float4(float4(node_7694.rgb,0.0).zy, node_2990_k.wz), float4(float4(node_7694.rgb,0.0).yz, node_2990_k.xy), step(float4(node_7694.rgb,0.0).z, float4(node_7694.rgb,0.0).y));
	float4 node_2990_q = lerp(float4(node_2990_p.xyw, float4(node_7694.rgb,0.0).x), float4(float4(node_7694.rgb,0.0).x, node_2990_p.yzx), step(node_2990_p.x, float4(node_7694.rgb,0.0).x));
	float node_2990_d = node_2990_q.x - min(node_2990_q.w, node_2990_q.y);
	float node_2990_e = 1.0e-10;
	float3 node_2990 = float3(abs(node_2990_q.z + (node_2990_q.w - node_2990_q.y) / (6.0 * node_2990_d + node_2990_e)), node_2990_d / (node_2990_q.x + node_2990_e), node_2990_q.x);;
	float4 node_6268 = tex2D(_color_map,TRANSFORM_TEX(node_2386, _color_map));
	float4 _color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _color );
	float4 node_7304 = float4(_color_var.rgb,_color_var.a);
	float4 node_5541 = tex2D(_color_map,TRANSFORM_TEX(node_2459, _color_map));
	float4 node_5344 = lerp((float4(node_6268.rgb,node_6268.a)*node_7304),(float4(node_5541.rgb,node_5541.a)*node_7304),node_9819);
	float node_4213 = (node_5344.a*_Mask_var.g);
	float node_8639 = (saturate(node_4213)*-1.0+1.0);
	float3 node_7723 = node_5344.rgb;
	float _alpha_wet_shadow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _alpha_wet_shadow );
	float3 node_7429 = (_LightColor0.rgb*attenuation);
	float node_6933 = 0.0;
	float _smoothness_var = UNITY_ACCESS_INSTANCED_PROP( Props, _smoothness );
	float _specular_var = UNITY_ACCESS_INSTANCED_PROP( Props, _specular );
	float3 finalColor = (((pow(1.0-max(0,dot(normalDirection, viewDirection)),_fresnel_var)*node_3985*_Mask_var.g)*((_skybox_val_var*Function_node_5527( viewReflectDirection , node_3524 ))+(texCUBElod(_cube_map,float4(viewReflectDirection,((1.0 - node_3524)*6.0))).rgb*_cube_map_val_var))*_environment_color_var.rgb)+lerp(node_7694.rgb,lerp(lerp(node_7694.rgb,saturate(((lerp(float3(1,1,1),saturate(3.0*abs(1.0-2.0*frac(node_2990.r+float3(0.0,-1.0/3.0,1.0/3.0)))-1),(node_2990.g*1.5))*node_2990.b)+pow(lerp(float3(node_8639,node_8639,node_8639),node_7723,0.0),1.5)-1.0)),pow((node_4213*_alpha_wet_shadow_var),0.75)),lerp(node_7694.rgb,saturate(( saturate((node_7723*(((saturate(pow(saturate((0.5*dot(lightDirection,normalDirection)+0.5)),1.0))*node_7429)+Function_node_2550( normalDirection ))*1.0+0.5))) > 0.5 ? (1.0-(1.0-2.0*(saturate((node_7723*(((saturate(pow(saturate((0.5*dot(lightDirection,normalDirection)+0.5)),1.0))*node_7429)+Function_node_2550( normalDirection ))*1.0+0.5)))-0.5))*(1.0-node_7694.rgb)) : (2.0*saturate((node_7723*(((saturate(pow(saturate((0.5*dot(lightDirection,normalDirection)+0.5)),1.0))*node_7429)+Function_node_2550( normalDirection ))*1.0+0.5)))*node_7694.rgb) )),saturate((node_4213*1.5))),node_4213),node_3985)+(lerp(float3(node_6933,node_6933,node_6933),pow(Function_node_9725( lerp(1.0,0.0,(node_3524*_smoothness_var)) , normalDirection , viewDirection , lightDirection , node_7429 ),_specular_var),_specular_var)*node_3985*_Mask_var.r*_environment_color_var.rgb));
	return fixed4(finalColor,1);
}
v2f vert(appdata v)
{
	v2f o;
	UNITY_SETUP_INSTANCE_ID( v );
	UNITY_TRANSFER_INSTANCE_ID( v, o );
	UNITY_INITIALIZE_OUTPUT(v2f, o);
	o.uv0 = v.uv;
	float cameraIntersection;
	v.texcoord1.w = GetVertexIntersection(v.vertex, cameraIntersection);
	o.uv1 = v.texcoord1;
	o.uv2 = v.texcoord2;
	o.uv3 = v.texcoord3;


	float3 deltaPosition = (v.texcoord1.x * normalize(v.normal)) + (v.texcoord1.y * normalize(v.tangent.xyz)) + (v.texcoord1.z * normalize(cross(v.normal,v.tangent.xyz)));
	if ( length(deltaPosition) == 0 ) {
		o.uv1.w = 0;
	}
	//float4 touchoffset;
	float4 furtouch;
	furtouch = 0;
	//touchoffset = float4(deltaPosition,1) * (v.texcoord1.w+cameraIntersection) * _BlendShapeMultiplier;
	
	float furlength = _FURLAYER * (20 * _FurLength);

	//WIND
	float4 wind =  mul(unity_ObjectToWorld, float4(v.vertex.xyz, 0.0));
	wind.x = _WindStrength * sin(_Time.y * (10 * _WindSpeed) + v.vertex.x);
	wind.y = _WindStrength * cos(_Time.y * (10 * _WindSpeed) * 0.25 + v.vertex.y);
	wind.z = _WindStrength * sin(_Time.y * (10 * _WindSpeed) * 0.45 + v.vertex.y);

	//GRAVITY - Add gravity to wind direction and subtract velocity
	_Gravity = mul(unity_WorldToObject, _Gravity);
	float4 totaldisplacement = wind.xyzw + _Gravity.xyzw - _Velocity.xyzw;
	float4 disNormali = float4(v.normal, 0);
	float displacementFactori = pow(furlength, (5 * (1 - _FurStiff)));
	disNormali.xyzw += (totaldisplacement) * displacementFactori;
	float4 displacementi = normalize(disNormali) * furlength * 0.25;
	float4 wposi = float4(v.vertex.xyzw + displacementi);

	if (_Furtouch > 0)
	{
		furtouch = mul(unity_WorldToObject, float4( (v.texcoord1.x * normalize(v.normal)) + (v.texcoord1.y * normalize(v.tangent.xyz)) + (v.texcoord1.z * normalize(cross(v.normal,v.tangent.xyz))) ,1) * (GetVertexIntersection(wposi, cameraIntersection)+GetVertexIntersection(wposi, cameraIntersection)) * _BlendShapeMultiplier);
	}


	//FURLENGTH, WEIGHT, AND SPACING BETWEEN LAYERS - Displacement
	float4 disNormal = float4(v.normal, 0);
	float4 disnorm2 = disNormal;
	float displacementFactor = pow(furlength, (5 * (1 - _FurStiff)));
	disNormal.xyzw += (totaldisplacement + (furtouch)) * displacementFactor;
	float4 displacement = normalize(disNormal) * furlength * 0.25;
	float4 wpos = float4(v.vertex.xyzw + displacement);

	if (_OrificeToggle > 0)
	{
	OrificeReshape(v.vertex, disNormal, v.tangent, v.vertexId);
	}
	if (_PenetratorToggle > 0)
	{
	PenetratorReshape(wpos, disNormal);
	}
	//SET VERTEX POSITION BY ADDING DISPLACEMENT POSITION
	//OUTPUT VERTEX VIEWPORT POSITION

	if (_TouchShader > 0)
	{
		wpos += float4( (v.texcoord1.x * normalize(v.normal)) + (v.texcoord1.y * normalize(v.tangent.xyz)) + (v.texcoord1.z * normalize(cross(v.normal,v.tangent.xyz))) ,1) * (GetVertexIntersection(v.vertex, cameraIntersection)+GetVertexIntersection(v.vertex, cameraIntersection)) * _BlendShapeMultiplier;
	}
	//OUTPUT TEXTURE COORDINATES
		//LIGHTING - Provided by Unity's shader tutorials (http://docs.unity3d.com/Manual/SL-VertexFragmentShaderExamples.html)
	//float4 worldNormal = mul(v.normal, unity_WorldToObject); //This Caused errors for PS4 : UnityObjectToWorldNormal(v.normal); 
	
	o.worldPos = mul(unity_ObjectToWorld, v.vertex);
	o.uv5 = v.uv;
	o.uv = TRANSFORM_TEX(v.uv, _MainTex);
	o.normalDirCalc = normalize(mul(float4(v.normal, 0.0), unity_WorldToObject).xyz);
	o.normal = mul(unity_ObjectToWorld, v.normal);
	o.normalDir = UnityObjectToWorldNormal(v.normal);
	o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
	o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
	float3 lightColor = _LightColor0.rgb;
	o.pos = UnityObjectToClipPos( wpos );
	o.projPos = ComputeGrabScreenPos (UnityObjectToClipPos( mul(unity_ObjectToWorld, float4(v.vertex.xyz, 0.0)).xyz ));
	COMPUTE_EYEDEPTH(o.projPos.z);
	TRANSFER_VERTEX_TO_FRAGMENT(o)

	// Diffuse reflection by four "vertex lights"      
	o.vertexLighting = float3(0.0, 0.0, 0.0);
	#ifdef FORWARD_BASE_PASS
		#ifdef VERTEXLIGHT_ON
		for (int index = 0; index < 4; index++)
		{  
		float4 lightPosition = float4(unity_4LightPosX0[index], unity_4LightPosY0[index], unity_4LightPosZ0[index], 1.0);

		float3 vertexToLightSource = lightPosition.xyz - o.worldPos.xyz;    
		float3 lightDirection = normalize(vertexToLightSource);
		float squaredDistance = dot(vertexToLightSource, vertexToLightSource);
		float attenuation = 1.0 / (1.0 + unity_4LightAtten0[index] * squaredDistance);
		float3 diffuseReflection = attenuation * unity_LightColor[index].rgb * _Color2.rgb * max(0.0, dot(o.normalDirCalc, lightDirection));     

		o.vertexLighting = o.vertexLighting + diffuseReflection;
		}
		#endif
	#endif
	TRANSFER_SHADOW(o);
	return o;

}
float4 frag(v2f i) : Color
{
	float4 flow = tex2D(_FlowTex, i.uv);
	flow = meowing(i);

	float3 normalDirection = normalize(i.normalDirCalc);
	float3 viewDirection = normalize(_WorldSpaceCameraPos - i.worldPos.xyz);
	float3 lightDirection;
	float attenuation;

	if (0.0 == _WorldSpaceLightPos0.w) // directional light?
	{
	attenuation = 1.0; // no attenuation
	lightDirection = normalize(_WorldSpaceLightPos0.xyz);
	} 
	else // point or spot light
	{
	float3 vertexToLightSource = _WorldSpaceLightPos0.xyz - i.worldPos.xyz;
	float distance = length(vertexToLightSource);
	attenuation = 1.0 / distance; // linear attenuation 
	lightDirection = normalize(vertexToLightSource);
	}
	half3 ambientLighting = ShadeSH9(float4(normalize(i.normalDir.xyz), 1.0)) * _Color2.rgb;
	float3 diffuseReflection = attenuation * _Color2.rgb * max(0.0, dot(normalDirection, lightDirection));

	float3 specularReflection;
	if (dot(normalDirection, lightDirection) < 0.0) 
	// light source on the wrong side?
	{
	specularReflection = float3(0.0, 0.0, 0.0); 
		// no specular reflection
	}
	else // light source on the right side
	{
	specularReflection = attenuation * _SpecColor2.rgb * pow(max(0.0, dot(reflect(-lightDirection, normalDirection), viewDirection)), _Shininess2);
	}
	float4 results = float4(i.vertexLighting + ambientLighting + diffuseReflection + specularReflection, 1.0);
	
	//VELOCITY CULLING
	if (_CullVelocity)
	{
		float4 normal = mul(unity_WorldToObject, i.normal);
		if (dot(normalize(normal), normalize(-_Velocity)) > _CullAngle) discard;
	}

	//SKIN LAYER
	if (_FURLAYER == 0.0 && _EnableSkin)
	{
		//Skin Color
		float4 skinColor = tex2D(_SkinTex, TRANSFORM_TEX(i.uv, _MainTex));
		skinColor *= _SkinColor;
		//Skin Brightness
		//gone

		//Skin Transparency
		skinColor.a = 1.0;
		skinColor.a *= max(_SkinTransparency, _SkinTransparency * _FURLAYER); //Skin Transparency
		//vectorflow
		skinColor.rgb *= _LightColor0.rgb + results.rgb;
		if (_Flowtoggle > 0)
		{
		skinColor.rgb = lerp(skinColor.rgb, flow.rgb, flow.rgb);
		}
		return skinColor;
	}
	//FUR LAYER
	else
	{
		//Fur Color
		float4 furColor = tex2D(_MainTex, i.uv);
		furColor *= _FurColor;
		//Depth Shadows - This darkens lower layers of the fur shader to give apperance of shadows underneath
		//Normal shadows
		//gone

		//Height map
		
		float2 Fuzzheight = tex2D(_FurFuzzheight,TRANSFORM_TEX(i.uv, _FurFuzzheight));
		float2 height = tex2D(_HeightMap,TRANSFORM_TEX(i.uv, _HeightMap));
		float hmBright = (2 * _HeightMapBrightness);
		Fuzzheight.xy = Fuzzheight.xy * hmBright;
		height.xy = height.xy * hmBright;
		//Discard pixels if heightmap is black 
		if (Fuzzheight.x <= 0.0 || Fuzzheight.y < _FURLAYER) discard;
		if (height.x <= 0.0 || height.y < _FURLAYER) discard;
		
		//Fur transparency, lower layers are more visable
		furColor.a = 1.0 - _FURLAYER;

		//Fur brightness
		//gone

		//User set fur transparency
		furColor.a *= max(_FurTransparency, _FurTransparency * _FURLAYER);
		furColor.rgb *= _LightColor0.rgb + results.rgb;
		if (_Flowtoggle > 0)
		{
		furColor.rgb = lerp(furColor.rgb, flow.rgb, flow.rgb);
		}
		return furColor;
	}
}