Shader "Custom/SDColor"
{
    Properties
    {
        _Albedo("Albedo Color", Color) = (1, 1, 1, 1)
    }

    SubShader
    {
        Tags
        {
            "Queque" = "Geometry"
            "RenderType" = "Opaque"
        }

        CGPROGRAM

            half4 _Albedo;

            #pragma surface surf Lambert

            struct Input
            {
                float2 uv_MainTex;
            }

            void surf(Input IN, inout SurfaceOutput o)
            {
                o.Albedo = texColor * _Albedo;
            }
        ENDCG
    }
}