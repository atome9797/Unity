//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Raygeas/Suntail Foliage" {
Properties {
[SingleLineTexture] [Header(Maps)] [Space(10)] _Albedo ("Albedo", 2D) = "white" { }
[SingleLineTexture] _SmoothnessTexture ("Smoothness", 2D) = "white" { }
_Tiling ("Tiling", Float) = 1
[Header(Settings)] [Space(5)] _MainColor ("Main Color", Color) = (1,1,1,0)
_Smoothness ("Smoothness", Range(0, 1)) = 0
_AlphaCutoff ("Alpha Cutoff", Range(0, 1)) = 0.35
[Header(Second Color Settings)] [Space(5)] [Toggle(_COLOR2ENABLE_ON)] _Color2Enable ("Enable", Float) = 0
_SecondColor ("Second Color", Color) = (0,0,0,0)
[KeywordEnum(World_Position,UV_Based)] _SecondColorOverlayType ("Overlay Type", Float) = 0
_SecondColorOffset ("Offset", Float) = 0
_SecondColorFade ("Fade", Range(-1, 1)) = 0.5
_WorldScale ("World Scale", Float) = 1
[Header(Wind Settings)] [Space(5)] [Toggle(_ENABLEWIND_ON)] _EnableWind ("Enable", Float) = 1
_WindForce ("Force", Range(0, 1)) = 0.3
_WindWavesScale ("Waves Scale", Range(0, 1)) = 0.25
_WindSpeed ("Speed", Range(0, 1)) = 0.5
[Toggle(_ANCHORTHEFOLIAGEBASE_ON)] _Anchorthefoliagebase ("Anchor the foliage base", Float) = 0
[Header(Lighting Settings)] [Space(5)] _DirectLightOffset ("Direct Light Offset", Range(0, 1)) = 0
_DirectLightInt ("Direct Light Int", Range(1, 10)) = 1
_IndirectLightInt ("Indirect Light Int", Range(1, 10)) = 1
_TranslucencyInt ("Translucency Int", Range(0, 100)) = 1
_texcoord ("", 2D) = "white" { }
__dirty ("", Float) = 1
}
SubShader {
 Tags { "QUEUE" = "AlphaTest+0" "RenderType" = "TransparentCutout" }
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE" = "FORWARDBASE" "QUEUE" = "AlphaTest+0" "RenderType" = "TransparentCutout" "SHADOWSUPPORT" = "true" }
  Cull Off
  GpuProgramID 14376
Program "vp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "VERTEXLIGHT_ON" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "VERTEXLIGHT_ON" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "VERTEXLIGHT_ON" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "VERTEXLIGHT_ON" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "LIGHTPROBE_SH" "SHADOWS_SCREEN" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE" = "FORWARDADD" "QUEUE" = "AlphaTest+0" "RenderType" = "TransparentCutout" "SHADOWSUPPORT" = "true" }
  Blend One One, One One
  ZWrite Off
  Cull Off
  GpuProgramID 91036
Program "vp" {
SubProgram "d3d11 " {
Keywords { "POINT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "POINT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SPOT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SPOT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SPOT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP" "SHADOWS_SCREEN" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "POINT" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "ShadowCaster"
  Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "AlphaTest+0" "RenderType" = "TransparentCutout" "SHADOWSUPPORT" = "true" }
  Cull Off
  GpuProgramID 142596
Program "vp" {
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_WORLD_POSITION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_PASS_SHADOWCASTER" }
Local Keywords { "_ANCHORTHEFOLIAGEBASE_ON" "_COLOR2ENABLE_ON" "_ENABLEWIND_ON" "_SECONDCOLOROVERLAYTYPE_UV_BASED" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Diffuse"
}