void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord / iResolution.xy;
    
    float r = 0.3f;
    uv -= 0.5f;
    uv.x *= iResolution.x / iResolution.y;
    
    if(sqrt(uv.x * uv.x + uv.y * uv.y) > r)
    {
    	fragColor = vec4(1.0);
    }
    else
    {
        fragColor = vec4(vec3(0), 1.0);
    }
}