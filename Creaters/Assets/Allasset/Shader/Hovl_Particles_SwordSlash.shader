//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hovl/Particles/SwordSlash" {
Properties {
_MainTexture ("MainTexture", 2D) = "white" { }
_EmissionTex ("EmissionTex", 2D) = "white" { }
_Opacity ("Opacity", Float) = 20
_Dissolve ("Dissolve", 2D) = "white" { }
_SpeedMainTexUVNoiseZW ("Speed MainTex U/V + Noise Z/W", Vector) = (0,0,0,0)
_Emission ("Emission", Float) = 5
_Remap ("Remap", Vector) = (-2,1,0,0)
_AddColor ("Add Color", Color) = (0,0,0,0)
_Desaturation ("Desaturation", Float) = 0
_texcoord ("", 2D) = "white" { }
_InvFade ("Soft Particles Factor", Range(0.01, 3)) = 1
[MaterialToggle] _Usedepth ("Use depth?", Float) = 0
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ColorMask RGB 0
  ZWrite Off
  Cull Off
  GpuProgramID 61651
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