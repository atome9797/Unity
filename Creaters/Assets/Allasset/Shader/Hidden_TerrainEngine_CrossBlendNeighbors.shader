//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/TerrainEngine/CrossBlendNeighbors" {
Properties {
_TopTex ("Top Texture", any) = "black" { }
_BottomTex ("Bottom Texture", any) = "black" { }
_LeftTex ("Left Texture", any) = "black" { }
_RightTex ("Right Texture", any) = "black" { }
}
SubShader {
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 10365
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