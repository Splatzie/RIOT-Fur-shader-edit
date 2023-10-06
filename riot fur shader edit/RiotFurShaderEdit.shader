Shader "RIOT/Fur/FurShaderEditdps"
{
	Properties
	{
		[Header(Textures)]
		_MainTex ("Fur Texture (RGB)", 2D) = "white" {}
		_SkinTex ("Skin Texture (RGB)", 2D) = "white" {}
		_HeightMap("Height Map (Gray) ", 2D) = "white" {}
		_FurFuzzheight("Fur Fuzz Height", 2D) = "white" {}

		[Header(Fur Color Properties)]
		_FurColor("Fur Color", Color) = (1, 1, 1, 1)
		_HeightMapBrightness("Height Map Brightness", Range(0, 1)) = 0.25
		_FurTransparency("Fur Transparency", Range(0, 1.0)) = 1.0

		[Header(Skin Color Properties)]
		[Toggle]_EnableSkin("Enable Skin Layer", Float) = 0
		_SkinColor("Skin Color", Color) = (1, 1, 1, 1)
		_SkinTransparency("Skin Transparency", Range(0, 1.0)) = 1.0

		[Header(Fur Properties)]
		_FurLength("Fur Length", Range(0, 1.0)) = 0.25
		_FurStiff("Fur Stiffness", Range(0, 1.0)) = 0.1
		_Gravity("Gravity Direction", Vector) = (0.0, 0.0, 0.0)

		[Header(Randomized Wind Properties)]
		_WindSpeed("Wind Speed", Range(0, 1.0)) = 0.0
		_WindStrength("Wind Strength", Range(0, 1)) = 0.0

		[Header(Velocity Properties)]
		[Toggle] _CullVelocity("Cull Velocity Angle", Float) = 0
		_CullAngle("Cull Angle", Range(-1.0, 1.0)) = 0.0

		[HideInInspector] _Velocity("Velocity", Vector) = (0.0, 0.0, 0.0, 0.0)
		
		[Toggle] _PenetratorToggle("Penetrator", Int) = 0
        _Squeeze("squeeze", Range( 0 , 0.2)) = 0.0266
        _SqueezeDist("SqueezeDist", Range( 0 , 0.1)) = 0.0289
        _BulgeOffset("BulgeOffset", Range( 0 , 0.3)) = 0.139
        _BulgePower("BulgePower", Range( 0 , 1)) = 0.00272
        _Length("Penetrator Length", Range( 0 , 3)) = 0.3541295
        _EntranceStiffness("EntranceStiffness", Range( 0.01 , 1)) = 0.01
        _Curvature("Curvature", Range( -1 , 1)) = 0
        _ReCurvature("ReCurvature", Range( -1 , 1)) = 0
        _WriggleSpeed("WriggleSpeed", Range( 0.1 , 30)) = 6.2
        _Wriggle("Wriggle", Range( 0 , 1)) = 0
        _OrificeChannel("OrificeChannel Please Use 0", Float) = 0

		[Toggle] _OrificeToggle("Orifice", Int) = 0
  		_OrificeData("OrificeData", 2D) = "white" {}
		_EntryOpenDuration("Entry Trigger Duration", Range( 0 , 1)) = 0.1
		_Shape1Depth("Shape 1 Trigger Depth", Range( 0 , 5)) = 0.1
		_Shape1Duration("Shape 1 Trigger Duration", Range( 0 , 1)) = 0.1
		_Shape2Depth("Shape 2 Trigger Depth", Range( 0 , 5)) = 0.2
		_Shape2Duration("Shape 2 Trigger Duration", Range( 0 , 1)) = 0.1
		_Shape3Depth("Shape 3 Trigger Depth", Range( 0 , 5)) = 0.3
		_Shape3Duration("Shape 3 Trigger Duration", Range( 0 , 1)) = 0.1
		_BlendshapePower("Blend Shape Power", Range(0,5)) = 1
		_BlendshapeBadScaleFix("Blend Shape Bad Scale Fix", Range(1,100)) = 1
		[Header(Advanced)]_OrificeChannel("OrificeChannel Please Use 0", Float) = 0
		[Header(Toon Shading (Check to activate))]_CellShadingSharpness("Cell Shading Sharpness", Range( 0 , 1)) = 0
		_ToonSpecularSize("ToonSpecularSize", Range( 0 , 1)) = 0
		_ToonSpecularIntensity("ToonSpecularIntensity", Range( 0 , 1)) = 0
		[Toggle(_TOONSHADING_ON)] _ToonShading("Toon Shading", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 0

		[Toggle] _TouchShader("Interact with body", Int) = 0
		[Toggle] _Furtouch("Interact with fur", Int) = 0
        _BlendShapeBackActivationDistance("Blend Shape Back Activation Distance", Range(0, 10)) = 0.1
        _BlendShapeBackDistanceMultiplier("Blend Shape Back Distance Multiplier", Range(0, 10)) = 1
        _BlendShapeForwardActivationDistance("Blend Shape Forward Activation Distance", Range(0, 10)) = 0.1
        _BlendShapeForwardDistanceMultiplier("Blend Shape Forward Distance Multiplier", Range(0, 10)) = 1
        _BlendShapeCameraActivationDistance("Blend Shape Camera Activation Distance", Range(0, 10)) = 1
        _BlendShapeCameraDistanceMultiplier("Blend Shape Camera Distance Multiplier", Range(0,10)) = 6
        _BlendShapeMultiplier("Blend Shape Multiplier", Range(0,1000)) = 100

		[Toggle] _Flowtoggle("VectorFlow", Int) = 0
		_flow_vector ("flow_vector", Vector) = (0,-1,0,0)
        _flow_speed ("flow_speed", Float ) = 0.2
        _flow_length ("flow_length", Float ) = 0.2
        [HideInInspector]_flow_offset ("flow_offset", Float ) = -0.5
        _color_map ("color_map", 2D) = "white" {}
        [HDR]_color ("color", Color) = (1,1,1,0)
        _smoothness ("smoothness", Range(0, 1)) = 0.9
        _alpha_wet_shadow ("alpha_wet_shadow", Range(0, 2)) = 0.5
        _flow_normal ("flow_normal", 2D) = "bump" {}
        _flow_normal_scale ("flow_normal_scale", Float ) = 1
        _specular ("specular", Range(0, 1)) = 0.65
        _fresnel ("fresnel", Range(0, 10)) = 2
        _refraction ("refraction", Range(-0.1, 0.1)) = -0.004
        _skybox_val ("skybox_val", Range(0, 10)) = 1
        _cube_map ("cube_map", Cube) = "_Skybox" {}
        _cube_map_val ("cube_map_val", Range(0, 10)) = 1
        [HDR]_environment_color ("environment_color", Color) = (1,1,1,1)
        _environment_mask ("environment_mask", 2D) = "white" {}
        _normal_map ("normal_map", 2D) = "bump" {}
        _normal_scale ("normal_scale", Float ) = 1
        _Mask ("Mask", 2D) = "white" {}

		_Color2 ("Diffuse Material Color", Color) = (1,1,1,1) 
		_SpecColor2 ("Specular Material Color", Color) = (1,1,1,1) 
		_Shininess2 ("Shininess", Float) = 10

	}


	SubShader {
		GrabPass {}
		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.0
			#include "FurHelper.cginc"
			ENDCG
		}
	
		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.0526315789473684
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.1052631578947368
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.1578947368421053
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.2105263157894737
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.2631578947368421
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.3157894736842105
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.3684210526315789
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.4210526315789474
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.4736842105263158
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.5263157894736842
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.5789473684210526
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.6315789473684211
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.6842105263157895
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.7368421052631579
			#include "FurHelper.cginc"
			ENDCG

		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.7894736842105263
			#include "FurHelper.cginc"
			ENDCG

		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.8421052631578947
			#include "FurHelper.cginc"
			ENDCG

		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.8947368421052632
			#include "FurHelper.cginc"
			ENDCG

		}

		Pass
        {
            Name "Forward_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
            ZTest Less
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
			#pragma multi_compile_fwdbase
			#pragma vertex vert
			#pragma fragment frag
			#define FORWARD_BASE_PASS
			#define _FURLAYER 0.9473684210526316
			#include "FurHelper.cginc"
			ENDCG
		}
		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.0
			#include "FurHelper.cginc"
			ENDCG
		}
	
		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.0526315789473684
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.1052631578947368
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.1578947368421053
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.2105263157894737
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.2631578947368421
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.3157894736842105
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.3684210526315789
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.4210526315789474
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.4736842105263158
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.5263157894736842
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.5789473684210526
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.6315789473684211
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.6842105263157895
			#include "FurHelper.cginc"
			ENDCG
		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.7368421052631579
			#include "FurHelper.cginc"
			ENDCG

		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.7894736842105263
			#include "FurHelper.cginc"
			ENDCG

		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.8421052631578947
			#include "FurHelper.cginc"
			ENDCG

		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.8947368421052632
			#include "FurHelper.cginc"
			ENDCG

		}

		Pass
		{
			Name "ForwardAdd_Fur"
            Tags {"RenderType"="Opaque" "Queue"="AlphaTest+51" "LightMode" = "ForwardAdd" "DisableBatching" = "True"}
            Blend One One
            ZTest Equal
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define _FURLAYER 0.9473684210526316
			#include "FurHelper.cginc"
			ENDCG
		}
	}
	FallBack "VertexLit"
}