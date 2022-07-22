//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Sunao Shader/Transparent" {
Properties {
_MainTex ("Main Texture", 2D) = "white" { }
_Color ("Color", Color) = (1,1,1,1)
_Alpha ("Alpha", Range(0, 2)) = 1
_Cutout ("Cutout", Range(0, 1)) = 0.5
_BumpMap ("Normal Map", 2D) = "bump" { }
_OcclusionMap ("Occlusion", 2D) = "white" { }
_AlphaMask ("Alpha Mask", 2D) = "white" { }
_Bright ("Brightness", Range(0, 1)) = 1
_BumpScale ("Normal Map Scale", Range(-2, 2)) = 1
_OcclusionStrength ("Occlusion Strength", Range(0, 1)) = 1
[Enum(SH Light, 0 , Main Texture , 1 , Final Color , 2)] _OcclusionMode ("Occlusion Mode    ", Float) = 0
_AlphaMaskStrength ("Alpha Mask Strength", Range(0, 1)) = 1
[SToggle] _VertexColor ("Use Vertex Color", Float) = 0
_UVScrollX ("Scroll X", Range(-10, 10)) = 0
_UVScrollY ("Scroll Y", Range(-10, 10)) = 0
_UVAnimation ("Animation Speed", Range(0, 10)) = 0
_UVAnimX ("Animation X Size", Float) = 1
_UVAnimY ("Animation Y Size", Float) = 1
[SToggle] _UVAnimOtherTex ("Animation Other Maps", Float) = 1
[SToggle] _DecalEnable ("Enable Decal", Float) = 0
_DecalTex ("Decal Texture", 2D) = "white" { }
_DecalColor ("Decal Color", Color) = (1,1,1,1)
_DecalPosX ("Position X", Range(0, 1)) = 0.5
_DecalPosY ("Position Y", Range(0, 1)) = 0.5
_DecalSizeX ("Size X", Range(0, 1)) = 0.5
_DecalSizeY ("Size Y", Range(0, 1)) = 0.5
_DecalRotation ("Rotation", Range(-180, 180)) = 0
[Enum(Override , 0 ,Add , 1 , Multiply , 2 , Multiply(Mono) , 3)] _DecalMode ("Decal Mode", Float) = 0
[Enum(Normal , 0 ,Fixed , 1 , Mirror1 , 2 , Mirror2 , 3)] _DecalMirror ("Decal Mirror Mode", Float) = 0
_DecalScrollX ("Scroll X", Range(-10, 10)) = 0
_DecalScrollY ("Scroll Y", Range(-10, 10)) = 0
_DecalAnimation ("Animation Speed", Range(0, 10)) = 0
_DecalAnimX ("Animation X Size", Float) = 1
_DecalAnimY ("Animation Y Size", Float) = 1
_ShadeMask ("Shade Mask", 2D) = "white" { }
_Shade ("Shade Strength", Range(0, 1)) = 0.3
_ShadeWidth ("Shade Width", Range(0, 2)) = 0.75
_ShadeGradient ("Shade Gradient", Range(0, 2)) = 0.75
_ShadeColor ("Shade Color", Range(0, 1)) = 0.5
_CustomShadeColor ("Custom Shade Color", Color) = (0,0,0,0)
[SToggle] _ToonEnable ("Enable Toon Shading", Float) = 0
[IntRange] _Toon ("Toon", Range(0, 9)) = 9
_ToonSharpness ("Toon Sharpness", Range(0, 1)) = 1
_LightMask ("Lighting Boost Mask", 2D) = "black" { }
_LightBoost ("Lighting Boost", Range(1, 5)) = 3
_Unlit ("Unlighting", Range(0, 1)) = 0
[SToggle] _MonochromeLit ("Monochrome Lighting", Float) = 0
[SToggle] _OutLineEnable ("Enable Outline", Float) = 0
_OutLineMask ("Outline Mask", 2D) = "white" { }
_OutLineColor ("Outline Color", Color) = (0,0,0,1)
_OutLineSize ("Outline Scale", Range(0, 1)) = 0.1
[SToggle] _OutLineLighthing ("Use Light Color", Float) = 1
[SToggle] _OutLineTexColor ("Use Main Texture", Float) = 0
_OutLineTexture ("Outline Texture", 2D) = "white" { }
[SToggle] _OutLineFixScale ("x10 Scale", Float) = 0
[SToggle] _EmissionEnable ("Enable Emission", Float) = 0
_EmissionMap ("Emission Mask", 2D) = "white" { }
_EmissionColor ("Emission Color", Color) = (1,1,1,1)
_Emission ("Emission Intensity", Range(0, 2)) = 1
_EmissionMap2 ("2nd Emission Mask", 2D) = "white" { }
[Enum(Add , 0 ,Multiply , 1 , Minus , 2)] _EmissionMode ("Emission Mode", Float) = 0
_EmissionBlink ("Blink", Range(0, 1)) = 0
_EmissionFrequency ("Frequency", Range(0, 5)) = 1
[Enum(Sine , 0 , Saw , 1 , SawR , 2 , Square , 3)] _EmissionWaveform ("Waveform", Float) = 0
_EmissionScrX ("Scroll X", Range(-10, 10)) = 0
_EmissionScrY ("Scroll Y", Range(-10, 10)) = 0
_EmissionAnimation ("Animation Speed", Range(0, 10)) = 0
_EmissionAnimX ("Animation X Size", Float) = 1
_EmissionAnimY ("Animation Y Size", Float) = 1
[SToggle] _EmissionLighting ("Use Lighting", Float) = 0
[SToggle] _IgnoreTexAlphaE ("Ignore Texture Alpha", Float) = 0
_EmissionInTheDark ("Only in the Dark", Range(0, 1)) = 0
[SToggle] _ParallaxEnable ("Enable Parallax Emission", Float) = 0
_ParallaxMap ("Parallax Emission Mask", 2D) = "white" { }
_ParallaxColor ("Emission Color", Color) = (1,1,1,1)
_ParallaxEmission ("Emission Intensity", Range(0, 2)) = 1
_ParallaxDepth ("Parallax Depth", Range(0, 1)) = 1
_ParallaxDepthMap ("Parallax Depth Mask", 2D) = "black" { }
_ParallaxMap2 ("2nd Parallax Emission Mask", 2D) = "white" { }
[Enum(Add , 0 ,Multiply , 1 , Minus , 2)] _ParallaxMode ("Emission Mode", Float) = 0
_ParallaxBlink ("Blink", Range(0, 1)) = 0
_ParallaxFrequency ("Frequency", Range(0, 5)) = 1
[Enum(Sine , 0 , Saw , 1 , SawR , 2 , Square , 3)] _ParallaxWaveform ("Waveform", Float) = 0
_ParallaxPhaseOfs ("Phase Offset", Range(0, 1)) = 0
_ParallaxScrX ("Scroll X", Range(-10, 10)) = 0
_ParallaxScrY ("Scroll Y", Range(-10, 10)) = 0
_ParallaxAnimation ("Animation Speed", Range(0, 10)) = 0
_ParallaxAnimX ("Animation X Size", Float) = 1
_ParallaxAnimY ("Animation Y Size", Float) = 1
[SToggle] _ParallaxLighting ("Use Lighting", Float) = 0
[SToggle] _IgnoreTexAlphaPE ("Ignore Texture Alpha", Float) = 0
_ParallaxInTheDark ("Only in the Dark", Range(0, 1)) = 0
[SToggle] _ReflectionEnable ("Enable Reflection", Float) = 0
_MetallicGlossMap ("Reflection Mask", 2D) = "white" { }
_MatCap ("Material Capture", 2D) = "black" { }
_Specular ("Specular Intensity", Range(0, 2)) = 1
_Metallic ("Metallic", Range(0, 1)) = 0.5
_MatCapStrength ("MatCap Strength", Range(0, 2)) = 1
_GlossMapScale ("Smoothness", Range(0, 1)) = 0.75
[SToggle] _SpecularTexColor ("Tex Color for Specular", Float) = 0
[SToggle] _MetallicTexColor ("Tex Color for Metallic", Float) = 1
[SToggle] _MatCapTexColor ("Tex Color for MatCap", Float) = 0
[SToggle] _SpecularSH ("SH Light Specular", Float) = 1
[SToggle] _SpecularMask ("Use Mask for Specular", Float) = 1
[Enum(None , 0 , RealTime , 1 , SH , 2 , Both , 3)] _ReflectLit ("Light Color for Reflection", Float) = 0
[Enum(None , 0 , RealTime , 1 , SH , 2 , Both , 3)] _MatCapLit ("Light Color for MatCap", Float) = 3
[SToggle] _IgnoreTexAlphaR ("Ignore Texture Alpha", Float) = 0
[SToggle] _RimLitEnable ("Enable Rim Light", Float) = 0
_RimLitMask ("Rim Light Mask", 2D) = "white" { }
_RimLitColor ("Rim Light Color", Color) = (1,1,1,1)
_RimLit ("Rim Lighting", Range(0, 2)) = 1
_RimLitGradient ("Rim Light Gradient", Range(0, 2)) = 1
[SToggle] _RimLitLighthing ("Use Light Color", Float) = 1
[SToggle] _RimLitTexColor ("Use Main Texture", Float) = 0
[Enum(Add , 0 , Multiply , 1 , Minus , 2)] _RimLitMode ("Rim Light Mode", Float) = 0
[SToggle] _IgnoreTexAlphaRL ("Ignore Texture Alpha", Float) = 0
[Enum(Off , 0 , Back , 2 , Front , 1)] _Culling ("Culling", Float) = 2
[SToggle] _EnableZWrite ("Enable Z Write", Float) = 1
_DirectionalLight ("Directional Light", Range(0, 2)) = 1
_SHLight ("SH Light", Range(0, 2)) = 1
_PointLight ("Point Light", Range(0, 2)) = 1
[SToggle] _LightLimitter ("Light Limitter", Float) = 1
[SToggle] _EnableGammaFix ("Enable Gamma Fix", Float) = 0
_GammaR ("R Gamma", Range(0, 5)) = 1
_GammaG ("G Gamma", Range(0, 5)) = 1
_GammaB ("B Gamma", Range(0, 5)) = 1
[SToggle] _EnableBlightFix ("Enable Brightness Fix", Float) = 0
_BlightOutput ("Output Brightness", Range(0, 5)) = 1
_BlightOffset ("Brightness Offset", Range(-5, 5)) = 0
[SToggle] _LimitterEnable ("Enable Limitter", Float) = 0
_LimitterMax ("Limitter Max", Range(0, 5)) = 1
_MainFO ("Main FO", Float) = 0
_DecalFO ("Decal FO", Float) = 0
_ShadingFO ("Shading FO", Float) = 0
_OutlineFO ("Outline FO", Float) = 0
_EmissionFO ("Emission FO", Float) = 0
_ParallaxFO ("Parallax FO", Float) = 0
_ReflectionFO ("Reflection FO", Float) = 0
_RimLightingFO ("Rim Lighting FO", Float) = 0
_OtherSettingsFO ("Other Settings FO", Float) = 0
_SunaoShaderType ("ShaderType", Float) = 1
_VersionH ("Version H", Float) = 0
_VersionM ("Version M", Float) = 0
_VersionL ("Version L", Float) = 0
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "FORWARDBASE" "QUEUE" = "Transparent" "RenderType" = "Transparent" "SHADOWSUPPORT" = "true" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ZWrite Off
  Cull Off
  GpuProgramID 7532
Program "vp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "FORWARDBASE" "QUEUE" = "Transparent" "RenderType" = "Transparent" "SHADOWSUPPORT" = "true" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ZWrite Off
  Cull Front
  GpuProgramID 76038
Program "vp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "FORWARDADD" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend SrcAlpha One, SrcAlpha One
  ZWrite Off
  Cull Front
  GpuProgramID 189715
Program "vp" {
SubProgram "d3d11 " {
Keywords { "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "FORWARDADD" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend SrcAlpha One, SrcAlpha One
  ZWrite Off
  Cull Off
  GpuProgramID 221009
Program "vp" {
SubProgram "d3d11 " {
Keywords { "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderType" = "Transparent" "SHADOWSUPPORT" = "true" }
  GpuProgramID 270053
Program "vp" {
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Transparent/Diffuse"
CustomEditor "SunaoShader.GUI"
}