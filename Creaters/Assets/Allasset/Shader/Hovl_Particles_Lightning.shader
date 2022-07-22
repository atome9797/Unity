//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hovl/Particles/Lightning" {
Properties {
_MainTexture ("Main Texture", 2D) = "white" { }
_Noise ("Noise", 2D) = "white" { }
_FlowMap ("Flow Map", 2D) = "white" { }
_VFlowSpeed ("V Flow Speed", Float) = 2
_UFlowSpeed ("U Flow Speed", Float) = 4
_FlowStrength ("Flow Strength", Float) = 0.1
_Color ("Color", Color) = (1,1,1,1)
_Emission ("Emission", Float) = 2
_ShinnySpeed ("Shinny Speed", Float) = 30
[Toggle] _UseShinny ("Use Shinny", Float) = 0
[MaterialToggle] _Usedepth ("Use depth?", Float) = 0
_InvFade ("Soft Particles Factor", Range(0.01, 3)) = 1
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ColorMask RGB 0
  ZWrite Off
  Cull Off
  GpuProgramID 60843
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}