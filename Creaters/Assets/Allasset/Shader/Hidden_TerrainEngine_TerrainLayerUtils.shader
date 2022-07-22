//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/TerrainEngine/TerrainLayerUtils" {
Properties {
_MainTex ("Texture", any) = "" { }
}
SubShader {
 Pass {
  Name "Get Terrain Layer Channel"
  BlendOp Max, Max
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 5765
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
  Name "Set Terrain Layer Channel"
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 87243
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
  Name "Blit Copy Highest Mip"
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 134131
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