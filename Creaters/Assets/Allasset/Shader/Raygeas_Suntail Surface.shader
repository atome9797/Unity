//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Raygeas/Suntail Surface" {
Properties {
[SingleLineTexture] [Header(Maps)] [Space(10)] _Albedo ("Albedo", 2D) = "white" { }
[SingleLineTexture] _Normal ("Normal", 2D) = "bump" { }
[SingleLineTexture] _MetallicSmoothness ("Metallic/Smoothness", 2D) = "white" { }
[SingleLineTexture] _Emission ("Emission", 2D) = "white" { }
_Tiling ("Tiling", Float) = 1
[Header(Settings)] [Space(5)] _Color ("Color", Color) = (1,1,1,0)
_EmissionColor ("Emission", Color) = (0,0,0,1)
_NormalScale ("Normal", Float) = 1
_Metallic ("Metallic", Range(0, 1)) = 0
_SurfaceSmoothness ("Smoothness", Range(0, 1)) = 0
[KeywordEnum(Metallic_Alpha,Albedo_Alpha)] _SmoothnessSource ("Smoothness Source", Float) = 0
_texcoord ("", 2D) = "white" { }
__dirty ("", Float) = 1
}
SubShader {
 Tags { "IsEmissive" = "true" "QUEUE" = "Geometry+0" "RenderType" = "Opaque" }
 Pass {
  Name "FORWARD"
  Tags { "IsEmissive" = "true" "LIGHTMODE" = "FORWARDBASE" "QUEUE" = "Geometry+0" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  GpuProgramID 13970
Program "vp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LOD_FADE_CROSSFADE" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LOD_FADE_CROSSFADE" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LOD_FADE_CROSSFADE" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LOD_FADE_CROSSFADE" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LOD_FADE_CROSSFADE" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LOD_FADE_CROSSFADE" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LOD_FADE_CROSSFADE" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LOD_FADE_CROSSFADE" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "SHADOWS_SCREEN" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DEFERRED"
  Tags { "IsEmissive" = "true" "LIGHTMODE" = "DEFERRED" "QUEUE" = "Geometry+0" "RenderType" = "Opaque" }
  GpuProgramID 80195
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LOD_FADE_CROSSFADE" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LOD_FADE_CROSSFADE" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LOD_FADE_CROSSFADE" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LOD_FADE_CROSSFADE" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LOD_FADE_CROSSFADE" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LOD_FADE_CROSSFADE" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LOD_FADE_CROSSFADE" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LOD_FADE_CROSSFADE" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LIGHTPROBE_SH" "LOD_FADE_CROSSFADE" "UNITY_HDR_ON" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "ShadowCaster"
  Tags { "IsEmissive" = "true" "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Geometry+0" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  GpuProgramID 191422
Program "vp" {
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_CUBE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_CUBE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LOD_FADE_CROSSFADE" "SHADOWS_DEPTH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LOD_FADE_CROSSFADE" "SHADOWS_CUBE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LOD_FADE_CROSSFADE" "SHADOWS_DEPTH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LOD_FADE_CROSSFADE" "SHADOWS_CUBE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_DEPTH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_CUBE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_DEPTH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_CUBE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_CUBE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_CUBE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LOD_FADE_CROSSFADE" "SHADOWS_DEPTH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LOD_FADE_CROSSFADE" "SHADOWS_CUBE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LOD_FADE_CROSSFADE" "SHADOWS_DEPTH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LOD_FADE_CROSSFADE" "SHADOWS_CUBE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_DEPTH" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_CUBE" }
Local Keywords { "_SMOOTHNESSSOURCE_METALLIC_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_DEPTH" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "LOD_FADE_CROSSFADE" "SHADOWS_CUBE" }
Local Keywords { "_SMOOTHNESSSOURCE_ALBEDO_ALPHA" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Diffuse"
}