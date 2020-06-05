void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord/iResolution.xy;
	
    float c = smoothstep(0.6f, 0.4f, uv.x);
    
    fragColor = vec4(vec3(c),1.0);
}