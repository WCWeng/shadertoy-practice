void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord/iResolution.xy;
	uv -= 0.5f;
    uv.x *= iResolution.x / iResolution.y;
	
    float r = 0.3f;
    float l = sqrt(uv.x * uv.x + uv.y * uv.y);
    
    
    //float c = l > r ? 1.0f : 0.0f;
    float c = smoothstep(r, r + 0.015, l);
    fragColor = vec4(vec3(c),1.0);
}