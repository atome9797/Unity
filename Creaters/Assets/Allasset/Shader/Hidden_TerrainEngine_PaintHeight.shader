//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/TerrainEngine/PaintHeight" {
Properties {
_MainTex ("Texture", any) = "" { }
}
SubShader {
 Pass {
  Name "Raise/Lower Heights"
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 38186
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Stamp Heights"
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 105975
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Set Heights"
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 187121
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Smooth Heights"
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 229969
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Paint Texture"
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 303487
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Paint Holes"
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 334029
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
}
}