void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord/iResolution.xy;
	uv -= 0.5f;
    uv.x *= iResolution.x / iResolution.y;
	
    float r = 0.3f;
    float l = sqrt(uv.x * uv.x + uv.y * uv.y);
    vec3 c = l > r ? vec3(1) : vec3(0);
    fragColor = vec4(c,1.0);
}