// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:LwBBAHMAcwBlAHQAcwAvAEgASABFAEEAVgBFAE4AcwAvAFMAaABhAGQAZQByAHMALwBWAGUAYwB0AG8AcgBGAGwAbwB3AC8AVgBlAGMAdABvAHIARgBsAG8AdwBfAHUAdABpAGwA,cpap:True,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:2,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:0,stmr:255,stmw:255,stcp:6,stps:2,stfa:0,stfz:0,ofsf:-1,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:31944,y:32248,varname:node_3138,prsc:2|normal-8244-OUT,custl-5343-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:395,x:28696,y:33103,varname:node_395,prsc:2;n:type:ShaderForge.SFN_Code,id:5527,x:28991,y:32715,varname:node_5527,prsc:2,code:aABhAGwAZgAgAG0AaQBwACAAPQAgACgAIAAxAC4AMAAgAC0AIABHAGwAbwBzAHMAaQBuAGUAcwBzACAAKQAgACoAIAA2ADsACgBoAGEAbABmADQAIABzAGsAeQBEAGEAdABhACAAPQAgAFUATgBJAFQAWQBfAFMAQQBNAFAATABFAF8AVABFAFgAQwBVAEIARQBfAEwATwBEACgAIAB1AG4AaQB0AHkAXwBTAHAAZQBjAEMAdQBiAGUAMAAsACAARABpAHIALAAgAG0AaQBwACAAKQA7AAoALwAvAGgAYQBsAGYANAAgAHMAawB5AEQAYQB0AGEAIAA9ACAAdABlAHgAQwBVAEIARQBsAG8AZAAoACAAdQBuAGkAdAB5AF8AUwBwAGUAYwBDAHUAYgBlADAALAAgAGYAbABvAGEAdAA0ACgAIABEAGkAcgAsACAAZgBsAG8AYQB0ACgAIABtAGkAcAAgACkAIAApACAAKQA7AAoAaABhAGwAZgAzACAAcwBrAHkAQwBvAGwAbwByACAAPQAgAEQAZQBjAG8AZABlAEgARABSACgAIABzAGsAeQBEAGEAdABhACwAIAB1AG4AaQB0AHkAXwBTAHAAZQBjAEMAdQBiAGUAMABfAEgARABSACAAKQA7AAoAcgBlAHQAdQByAG4AIABzAGsAeQBDAG8AbABvAHIAOwAKAA==,output:2,fname:Function_node_5527,width:696,height:300,input:2,input:0,input_1_label:Dir,input_2_label:Glossiness|A-395-OUT,B-3524-OUT;n:type:ShaderForge.SFN_Cubemap,id:2170,x:29483,y:33198,ptovrint:False,ptlb:cube_map,ptin:_cube_map,varname:_cube_map,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,pvfc:0|DIR-395-OUT,MIP-4117-OUT;n:type:ShaderForge.SFN_Add,id:556,x:30076,y:32957,varname:node_556,prsc:2|A-5225-OUT,B-8300-OUT;n:type:ShaderForge.SFN_Tex2d,id:4185,x:28820,y:29990,varname:node_4185,prsc:2,ntxv:3,isnm:True|UVIN-2386-OUT,TEX-5501-TEX;n:type:ShaderForge.SFN_Vector4Property,id:9194,x:26842,y:29501,ptovrint:False,ptlb:flow_vector,ptin:_flow_vector,varname:_flow_vector,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:-1,v3:0,v4:0;n:type:ShaderForge.SFN_Transform,id:4701,x:27038,y:29501,varname:node_4701,prsc:2,tffrom:0,tfto:2|IN-9194-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:7503,x:27466,y:29503,varname:node_7503,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9188-OUT;n:type:ShaderForge.SFN_Time,id:103,x:26764,y:29852,varname:node_103,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:7106,x:26764,y:30033,ptovrint:False,ptlb:flow_speed,ptin:_flow_speed,varname:_flow_speed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:9982,x:26971,y:29852,varname:node_9982,prsc:2|A-103-T,B-7106-OUT;n:type:ShaderForge.SFN_Add,id:8293,x:27166,y:29984,varname:node_8293,prsc:2|A-9982-OUT,B-9522-OUT;n:type:ShaderForge.SFN_Vector1,id:9522,x:26971,y:30094,varname:node_9522,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Frac,id:8513,x:27352,y:29853,varname:node_8513,prsc:2|IN-9982-OUT;n:type:ShaderForge.SFN_Frac,id:4013,x:27352,y:29984,varname:node_4013,prsc:2|IN-8293-OUT;n:type:ShaderForge.SFN_Multiply,id:7648,x:27679,y:29503,varname:node_7648,prsc:2|A-7503-OUT,B-5872-OUT,C-2461-OUT;n:type:ShaderForge.SFN_Vector2,id:5872,x:27496,y:29678,varname:node_5872,prsc:2,v1:-1,v2:-1;n:type:ShaderForge.SFN_ValueProperty,id:2461,x:27496,y:29795,ptovrint:False,ptlb:flow_length,ptin:_flow_length,varname:_flow_length,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:8375,x:27914,y:29853,varname:node_8375,prsc:2|A-4893-OUT,B-7648-OUT;n:type:ShaderForge.SFN_Add,id:2386,x:28103,y:29853,varname:node_2386,prsc:2|A-8375-OUT,B-5900-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:5900,x:27914,y:29661,varname:node_5900,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:7440,x:27914,y:29984,varname:node_7440,prsc:2|A-4198-OUT,B-7648-OUT;n:type:ShaderForge.SFN_Add,id:2459,x:28103,y:29984,varname:node_2459,prsc:2|A-7440-OUT,B-5900-UVOUT;n:type:ShaderForge.SFN_Subtract,id:8878,x:27724,y:30170,varname:node_8878,prsc:2|A-8513-OUT,B-7706-OUT;n:type:ShaderForge.SFN_Vector1,id:7706,x:27724,y:30323,varname:node_7706,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Divide,id:5238,x:27923,y:30170,varname:node_5238,prsc:2|A-8878-OUT,B-7706-OUT;n:type:ShaderForge.SFN_Abs,id:9819,x:28094,y:30170,varname:node_9819,prsc:2|IN-5238-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:5501,x:28539,y:30076,ptovrint:False,ptlb:flow_normal,ptin:_flow_normal,varname:_flow_normal,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:1729,x:28820,y:30170,varname:node_1729,prsc:2,ntxv:0,isnm:False|UVIN-2459-OUT,TEX-5501-TEX;n:type:ShaderForge.SFN_Lerp,id:8369,x:29159,y:29991,varname:node_8369,prsc:2|A-4185-RGB,B-1729-RGB,T-9819-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1809,x:29392,y:29991,varname:node_1809,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-8369-OUT;n:type:ShaderForge.SFN_Append,id:6577,x:29588,y:29885,varname:node_6577,prsc:2|A-1809-R,B-1809-G;n:type:ShaderForge.SFN_Multiply,id:5404,x:29765,y:29885,varname:node_5404,prsc:2|A-6577-OUT,B-6759-OUT,C-9136-R;n:type:ShaderForge.SFN_ValueProperty,id:6759,x:29588,y:29804,ptovrint:False,ptlb:flow_normal_scale,ptin:_flow_normal_scale,varname:_flow_normal_scale,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:4872,x:29952,y:30036,varname:node_4872,prsc:2|A-5404-OUT,B-1809-B;n:type:ShaderForge.SFN_Normalize,id:9479,x:30125,y:30036,varname:node_9479,prsc:2|IN-4872-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4157,x:27337,y:30224,ptovrint:False,ptlb:flow_offset,ptin:_flow_offset,varname:_flow_offset,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-0.5;n:type:ShaderForge.SFN_Add,id:4893,x:27586,y:29853,varname:node_4893,prsc:2|A-8513-OUT,B-4157-OUT;n:type:ShaderForge.SFN_Add,id:4198,x:27586,y:29984,varname:node_4198,prsc:2|A-4013-OUT,B-4157-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4573,x:28349,y:31120,ptovrint:False,ptlb:environment_mask,ptin:_environment_mask,varname:_environment_mask,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5999,x:28606,y:31035,varname:node_5999,prsc:2,ntxv:0,isnm:False|UVIN-2386-OUT,TEX-4573-TEX;n:type:ShaderForge.SFN_Tex2d,id:9723,x:28606,y:31196,varname:node_9723,prsc:2,ntxv:0,isnm:False|UVIN-2459-OUT,TEX-4573-TEX;n:type:ShaderForge.SFN_Lerp,id:1496,x:28939,y:31117,varname:node_1496,prsc:2|A-5999-RGB,B-9723-RGB,T-9819-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3985,x:30327,y:32474,varname:node_3985,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1496-OUT;n:type:ShaderForge.SFN_Fresnel,id:962,x:30903,y:32249,varname:node_962,prsc:2|NRM-7466-OUT,EXP-573-OUT;n:type:ShaderForge.SFN_Multiply,id:1842,x:30531,y:32721,varname:node_1842,prsc:2|A-4268-OUT,B-556-OUT,C-5547-RGB;n:type:ShaderForge.SFN_SceneColor,id:7694,x:30735,y:34027,varname:node_7694,prsc:2|UVIN-7133-OUT;n:type:ShaderForge.SFN_Add,id:5343,x:31490,y:32604,varname:node_5343,prsc:2|A-1842-OUT,B-2584-OUT,C-2044-OUT;n:type:ShaderForge.SFN_NormalVector,id:7466,x:30346,y:32250,prsc:2,pt:True;n:type:ShaderForge.SFN_Slider,id:8323,x:29404,y:33459,ptovrint:False,ptlb:cube_map_val,ptin:_cube_map_val,varname:_cube_map_val,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Multiply,id:8300,x:29823,y:33299,varname:node_8300,prsc:2|A-2170-RGB,B-8323-OUT;n:type:ShaderForge.SFN_Slider,id:3109,x:29405,y:33078,ptovrint:False,ptlb:skybox_val,ptin:_skybox_val,varname:_skybox_val,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Multiply,id:5225,x:29844,y:32795,varname:node_5225,prsc:2|A-3109-OUT,B-5527-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:7034,x:27852,y:31650,ptovrint:False,ptlb:color_map,ptin:_color_map,varname:_color_map,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6268,x:28164,y:31512,varname:node_6268,prsc:2,ntxv:0,isnm:False|UVIN-2386-OUT,TEX-7034-TEX;n:type:ShaderForge.SFN_Tex2d,id:5541,x:28164,y:31761,varname:node_5541,prsc:2,ntxv:0,isnm:False|UVIN-2459-OUT,TEX-7034-TEX;n:type:ShaderForge.SFN_Slider,id:573,x:30391,y:32140,ptovrint:False,ptlb:fresnel,ptin:_fresnel,varname:_fresnel,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:10;n:type:ShaderForge.SFN_Multiply,id:4268,x:30750,y:32398,varname:node_4268,prsc:2|A-962-OUT,B-3985-OUT,C-9136-G;n:type:ShaderForge.SFN_Color,id:130,x:28157,y:32010,ptovrint:False,ptlb:color,ptin:_color,varname:_color,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:0;n:type:ShaderForge.SFN_ComponentMask,id:3524,x:28391,y:33210,varname:node_3524,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-1496-OUT;n:type:ShaderForge.SFN_OneMinus,id:4167,x:28895,y:33347,varname:node_4167,prsc:2|IN-3524-OUT;n:type:ShaderForge.SFN_Multiply,id:4117,x:29076,y:33347,varname:node_4117,prsc:2|A-4167-OUT,B-5733-OUT;n:type:ShaderForge.SFN_Vector1,id:5733,x:28895,y:33506,varname:node_5733,prsc:2,v1:6;n:type:ShaderForge.SFN_Tex2d,id:9136,x:26758,y:32485,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:_Mask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7314,x:26483,y:29201,ptovrint:False,ptlb:normal_map,ptin:_normal_map,varname:_normal_map,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_NormalBlend,id:9188,x:27250,y:29447,varname:node_9188,prsc:2|BSE-6543-OUT,DTL-4701-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:8081,x:26682,y:29201,varname:node_8081,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-7314-RGB;n:type:ShaderForge.SFN_Append,id:6585,x:26896,y:29088,varname:node_6585,prsc:2|A-8081-R,B-8081-G;n:type:ShaderForge.SFN_Multiply,id:303,x:27051,y:29088,varname:node_303,prsc:2|A-6585-OUT,B-6518-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6518,x:26953,y:28985,ptovrint:False,ptlb:normal_scale,ptin:_normal_scale,varname:_normal_scale,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:8697,x:27227,y:29211,varname:node_8697,prsc:2|A-303-OUT,B-8081-B;n:type:ShaderForge.SFN_Normalize,id:6543,x:27395,y:29211,varname:node_6543,prsc:2|IN-8697-OUT;n:type:ShaderForge.SFN_NormalBlend,id:8244,x:30389,y:29989,varname:node_8244,prsc:2|BSE-9479-OUT,DTL-6543-OUT;n:type:ShaderForge.SFN_Color,id:5547,x:30213,y:32760,ptovrint:False,ptlb:environment_color,ptin:_environment_color,varname:_environment_color,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:4213,x:29257,y:31985,varname:node_4213,prsc:2|A-323-OUT,B-9136-G;n:type:ShaderForge.SFN_Append,id:6660,x:28411,y:31566,varname:node_6660,prsc:2|A-6268-RGB,B-6268-A;n:type:ShaderForge.SFN_Append,id:1415,x:28411,y:31733,varname:node_1415,prsc:2|A-5541-RGB,B-5541-A;n:type:ShaderForge.SFN_Lerp,id:5344,x:28820,y:31566,varname:node_5344,prsc:2|A-7275-OUT,B-6706-OUT,T-9819-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7297,x:29203,y:31566,varname:node_7297,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-5344-OUT;n:type:ShaderForge.SFN_ComponentMask,id:323,x:29203,y:31727,varname:node_323,prsc:2,cc1:3,cc2:-1,cc3:-1,cc4:-1|IN-5344-OUT;n:type:ShaderForge.SFN_Multiply,id:3936,x:28981,y:31882,varname:node_3936,prsc:2|A-5344-OUT,B-7304-OUT;n:type:ShaderForge.SFN_Append,id:7304,x:28404,y:32010,varname:node_7304,prsc:2|A-130-RGB,B-130-A;n:type:ShaderForge.SFN_Multiply,id:7275,x:28614,y:31566,varname:node_7275,prsc:2|A-6660-OUT,B-7304-OUT;n:type:ShaderForge.SFN_Multiply,id:6706,x:28614,y:31733,varname:node_6706,prsc:2|A-1415-OUT,B-7304-OUT;n:type:ShaderForge.SFN_Blend,id:2439,x:31176,y:34492,varname:node_2439,prsc:2,blmd:10,clmp:True|SRC-7694-RGB,DST-5448-OUT;n:type:ShaderForge.SFN_Relay,id:7723,x:30445,y:34135,varname:node_7723,prsc:2|IN-7297-OUT;n:type:ShaderForge.SFN_Vector1,id:4219,x:26788,y:29751,varname:node_4219,prsc:2,v1:2.5;n:type:ShaderForge.SFN_Vector1,id:7153,x:28745,y:31440,varname:node_7153,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Blend,id:2853,x:32099,y:33984,varname:node_2853,prsc:2,blmd:3,clmp:True|SRC-1718-OUT,DST-6472-OUT;n:type:ShaderForge.SFN_Lerp,id:8947,x:32600,y:34160,varname:node_8947,prsc:2|A-1617-OUT,B-5522-OUT,T-4213-OUT;n:type:ShaderForge.SFN_Code,id:2550,x:29136,y:34702,varname:node_2550,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABEAGkAcgAsACAAMQAuADAAKQApADsACgA=,output:2,fname:Function_node_2550,width:538,height:201,input:2,input_1_label:Dir|A-2539-OUT;n:type:ShaderForge.SFN_NormalVector,id:2539,x:28600,y:34806,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:711,x:28581,y:34375,varname:node_711,prsc:2;n:type:ShaderForge.SFN_Dot,id:506,x:28865,y:34376,varname:node_506,prsc:2,dt:4|A-711-OUT,B-2539-OUT;n:type:ShaderForge.SFN_Clamp01,id:4045,x:29394,y:34393,varname:node_4045,prsc:2|IN-3212-OUT;n:type:ShaderForge.SFN_LightColor,id:9045,x:29310,y:34965,varname:node_9045,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6212,x:29576,y:34393,varname:node_6212,prsc:2|A-4045-OUT,B-7429-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8540,x:29310,y:35107,varname:node_8540,prsc:2;n:type:ShaderForge.SFN_Add,id:7234,x:29889,y:34396,varname:node_7234,prsc:2|A-6212-OUT,B-2550-OUT;n:type:ShaderForge.SFN_Power,id:3212,x:29228,y:34393,varname:node_3212,prsc:2|VAL-6609-OUT,EXP-8153-OUT;n:type:ShaderForge.SFN_Vector1,id:8153,x:29027,y:34600,varname:node_8153,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:3322,x:30612,y:34549,varname:node_3322,prsc:2|A-7723-OUT,B-5918-OUT;n:type:ShaderForge.SFN_RemapRange,id:8639,x:31366,y:33795,varname:node_8639,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-2819-OUT;n:type:ShaderForge.SFN_RemapRange,id:5918,x:30228,y:34572,varname:node_5918,prsc:2,frmn:0,frmx:1,tomn:0.5,tomx:1.5|IN-7234-OUT;n:type:ShaderForge.SFN_Lerp,id:5522,x:31668,y:34493,varname:node_5522,prsc:2|A-7694-RGB,B-2439-OUT,T-8950-OUT;n:type:ShaderForge.SFN_Lerp,id:1617,x:32340,y:33892,varname:node_1617,prsc:2|A-7694-RGB,B-2853-OUT,T-4776-OUT;n:type:ShaderForge.SFN_Vector1,id:6666,x:31679,y:34255,varname:node_6666,prsc:2,v1:1.5;n:type:ShaderForge.SFN_Power,id:6472,x:31888,y:34129,varname:node_6472,prsc:2|VAL-1866-OUT,EXP-6666-OUT;n:type:ShaderForge.SFN_Multiply,id:2625,x:30796,y:34303,varname:node_2625,prsc:2|A-4213-OUT,B-1206-OUT;n:type:ShaderForge.SFN_Vector1,id:1206,x:30623,y:34373,varname:node_1206,prsc:2,v1:1.5;n:type:ShaderForge.SFN_Clamp01,id:8950,x:30961,y:34303,varname:node_8950,prsc:2|IN-2625-OUT;n:type:ShaderForge.SFN_Vector1,id:106,x:31915,y:33845,varname:node_106,prsc:2,v1:0.75;n:type:ShaderForge.SFN_Lerp,id:1866,x:31597,y:33812,varname:node_1866,prsc:2|A-8639-OUT,B-7723-OUT,T-1862-OUT;n:type:ShaderForge.SFN_Vector1,id:1862,x:31555,y:34011,varname:node_1862,prsc:2,v1:0;n:type:ShaderForge.SFN_Power,id:4776,x:32103,y:33744,varname:node_4776,prsc:2|VAL-1041-OUT,EXP-106-OUT;n:type:ShaderForge.SFN_RgbToHsv,id:2990,x:31070,y:33511,varname:node_2990,prsc:2|IN-7694-RGB;n:type:ShaderForge.SFN_HsvToRgb,id:1718,x:31507,y:33513,varname:node_1718,prsc:2|H-2990-HOUT,S-8885-OUT,V-2990-VOUT;n:type:ShaderForge.SFN_Multiply,id:8885,x:31304,y:33617,varname:node_8885,prsc:2|A-2990-SOUT,B-7235-OUT;n:type:ShaderForge.SFN_Vector1,id:7235,x:31132,y:33689,varname:node_7235,prsc:2,v1:1.5;n:type:ShaderForge.SFN_Transform,id:73,x:28918,y:33912,varname:node_73,prsc:2,tffrom:0,tfto:3|IN-8416-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3124,x:29330,y:33926,varname:node_3124,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-73-XYZ;n:type:ShaderForge.SFN_Multiply,id:804,x:29577,y:33926,varname:node_804,prsc:2|A-3124-OUT,B-1304-OUT,C-3985-OUT,D-2532-OUT,E-7634-OUT;n:type:ShaderForge.SFN_Add,id:7133,x:29839,y:33908,varname:node_7133,prsc:2|A-8578-UVOUT,B-804-OUT;n:type:ShaderForge.SFN_ScreenPos,id:8578,x:29587,y:33708,varname:node_8578,prsc:2,sctp:2;n:type:ShaderForge.SFN_NormalVector,id:2411,x:28489,y:33976,prsc:2,pt:False;n:type:ShaderForge.SFN_Subtract,id:8416,x:28740,y:33912,varname:node_8416,prsc:2|A-2411-OUT,B-1549-XYZ;n:type:ShaderForge.SFN_Slider,id:1304,x:29344,y:34154,ptovrint:False,ptlb:refraction,ptin:_refraction,varname:_refraction,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.1,cur:-0.004,max:0.1;n:type:ShaderForge.SFN_Clamp01,id:5448,x:30941,y:34584,varname:node_5448,prsc:2|IN-3322-OUT;n:type:ShaderForge.SFN_Clamp01,id:2819,x:31132,y:33795,varname:node_2819,prsc:2|IN-4213-OUT;n:type:ShaderForge.SFN_Clamp01,id:6609,x:29042,y:34376,varname:node_6609,prsc:2|IN-506-OUT;n:type:ShaderForge.SFN_Code,id:9725,x:29512,y:35657,varname:node_9725,prsc:2,code:cgBlAHQAdQByAG4AIABTAHAAZQBjAHUAbABhAHIAKAAgAHIAbwB1AGcAaABuAGUAcwBzACwAIABuAG8AcgBtAGEAbAAsACAAdgBpAGUAdwBfAGQAaQByACwAIABsAGkAZwBoAHQAXwBkAGkAcgAsACAAbABpAGcAaAB0AF8AYwBvAGwALAAgADAAIAApADsACgA=,output:2,fname:Function_node_9725,width:789,height:280,input:4,input:2,input:2,input:2,input:2,input_1_label:roughness,input_2_label:normal,input_3_label:view_dir,input_4_label:light_dir,input_5_label:light_col|A-99-OUT,B-2539-OUT,C-5644-OUT,D-711-OUT,E-7429-OUT;n:type:ShaderForge.SFN_Vector1,id:3896,x:28720,y:35966,varname:node_3896,prsc:2,v1:0;n:type:ShaderForge.SFN_ViewVector,id:5644,x:28889,y:35661,varname:node_5644,prsc:2;n:type:ShaderForge.SFN_Lerp,id:99,x:29029,y:35847,varname:node_99,prsc:2|A-3589-OUT,B-3896-OUT,T-1575-OUT;n:type:ShaderForge.SFN_Vector1,id:3589,x:28720,y:35886,varname:node_3589,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:7429,x:29506,y:35054,varname:node_7429,prsc:2|A-9045-RGB,B-8540-OUT;n:type:ShaderForge.SFN_Multiply,id:2044,x:30770,y:33193,varname:node_2044,prsc:2|A-7791-OUT,B-3985-OUT,C-9136-R,D-5547-RGB;n:type:ShaderForge.SFN_Lerp,id:2584,x:31680,y:33166,varname:node_2584,prsc:2|A-7694-RGB,B-8947-OUT,T-3985-OUT;n:type:ShaderForge.SFN_Slider,id:2608,x:29116,y:32370,ptovrint:False,ptlb:alpha_wet_shadow,ptin:_alpha_wet_shadow,varname:_alpha_wet_shadow,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:2;n:type:ShaderForge.SFN_Multiply,id:1041,x:29468,y:32226,varname:node_1041,prsc:2|A-4213-OUT,B-2608-OUT;n:type:ShaderForge.SFN_Slider,id:2926,x:28586,y:36138,ptovrint:False,ptlb:smoothness,ptin:_smoothness,varname:_smoothness,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9,max:1;n:type:ShaderForge.SFN_Slider,id:811,x:30329,y:35837,ptovrint:False,ptlb:specular,ptin:_specular,varname:_specular,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.65,max:1;n:type:ShaderForge.SFN_Power,id:2016,x:30507,y:35615,varname:node_2016,prsc:2|VAL-9725-OUT,EXP-811-OUT;n:type:ShaderForge.SFN_Lerp,id:7791,x:30488,y:35466,varname:node_7791,prsc:2|A-6933-OUT,B-2016-OUT,T-811-OUT;n:type:ShaderForge.SFN_Vector1,id:6933,x:30276,y:35437,varname:node_6933,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:1575,x:28952,y:36135,varname:node_1575,prsc:2|A-3524-OUT,B-2926-OUT;n:type:ShaderForge.SFN_Transform,id:1549,x:28489,y:33787,varname:node_1549,prsc:2,tffrom:2,tfto:0|IN-9479-OUT;n:type:ShaderForge.SFN_Reciprocal,id:1327,x:29100,y:34185,varname:node_1327,prsc:2|IN-6572-OUT;n:type:ShaderForge.SFN_ProjectionParameters,id:5642,x:28781,y:33695,varname:node_5642,prsc:2;n:type:ShaderForge.SFN_Depth,id:6572,x:28918,y:34185,varname:node_6572,prsc:2;n:type:ShaderForge.SFN_Dot,id:2532,x:28757,y:34132,varname:node_2532,prsc:2,dt:0|A-2411-OUT,B-3302-OUT;n:type:ShaderForge.SFN_ViewVector,id:3302,x:28502,y:34205,varname:node_3302,prsc:2;n:type:ShaderForge.SFN_Min,id:7634,x:29203,y:34113,varname:node_7634,prsc:2|A-1327-OUT,B-9095-OUT;n:type:ShaderForge.SFN_Vector1,id:9095,x:29142,y:34299,varname:node_9095,prsc:2,v1:1;proporder:9194-7106-2461-4157-7034-130-2926-2608-5501-6759-811-573-1304-3109-2170-8323-5547-4573-7314-6518-9136;pass:END;sub:END;*/

Shader "HHEAVENs/VectorFlowColor" {
    Properties {
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
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="Opaque"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZWrite Off
            Offset -1, 0
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "/Assets/HHEAVENs/Shaders/VectorFlow/VectorFlow_util.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
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
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeGrabScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_103 = _Time;
                float _flow_speed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _flow_speed );
                float node_9982 = (node_103.g*_flow_speed_var);
                float node_8513 = frac(node_9982);
                float _flow_offset_var = UNITY_ACCESS_INSTANCED_PROP( Props, _flow_offset );
                float3 _normal_map_var = UnpackNormal(tex2D(_normal_map,TRANSFORM_TEX(i.uv0, _normal_map)));
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
                float2 node_2386 = (((node_8513+_flow_offset_var)*node_7648)+i.uv0);
                float3 node_4185 = UnpackNormal(tex2D(_flow_normal,TRANSFORM_TEX(node_2386, _flow_normal)));
                float2 node_2459 = (((frac((node_9982+0.5))+_flow_offset_var)*node_7648)+i.uv0);
                float3 node_1729 = UnpackNormal(tex2D(_flow_normal,TRANSFORM_TEX(node_2459, _flow_normal)));
                float node_7706 = 0.5;
                float node_9819 = abs(((node_8513-node_7706)/node_7706));
                float3 node_1809 = lerp(node_4185.rgb,node_1729.rgb,node_9819).rgb;
                float _flow_normal_scale_var = UNITY_ACCESS_INSTANCED_PROP( Props, _flow_normal_scale );
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
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
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
