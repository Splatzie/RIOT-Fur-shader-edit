#include "UnityStandardBRDF.cginc"

float3 Specular(half perceptualRoughness, float3 normal, float3 viewDir, float3 lightDir, float3 lightColor, half3 indirectSpecular)
{
    float3  halfDir = Unity_SafeNormalize( lightDir + viewDir );
    half    ndotv   = abs( dot( normal, viewDir ) );
    float   ndotl   = saturate( dot( normal, lightDir ) );
    float   ndoth   = saturate( dot( normal, halfDir ) );
    half    ldoth   = saturate( dot( lightDir, halfDir ) );
    
    // Specular
    float alpha = perceptualRoughness * perceptualRoughness;
    alpha   = max( alpha, 0.002 );

    float   V   = SmithJointGGXVisibilityTerm( ndotl, ndotv, alpha );
    float   D   = GGXTerm( ndoth, alpha );
    float3  specular    = V * D * UNITY_PI;
    specular    = max( 0, specular * ndotl );
    // specular    = specular * lightColor * FresnelTerm( unity_ColorSpaceDielectricSpec, ldoth );
    specular    = specular * lightColor * FresnelTerm( 0.02, ldoth );


    // // Indirect Specular
    // half surfaceReduction = 1.0 / (alpha * alpha + 1.0);
    // half f90 = saturate((1 - perceptualRoughness) + reflectivity);
    // specular += surfaceReduction * indirectSpecular * lerp(f0, f90, pow(1 - ndotv, 5));
    
    return  specular;
}
