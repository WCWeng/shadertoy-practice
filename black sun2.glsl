float BlackCircle(vec2 uv, float displace, float r, float blur)
{
    //uv -= displace;
    float l = sqrt(uv.x * uv.x + uv.y * uv.y);
    float c = smoothstep(r, r + blur, l);
    return c;
}

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord/iResolution.xy;
    uv -= 0.5f;
    uv.x *= iResolution.x / iResolution.y;
    //uv -= 0.5f;
    
    float c = BlackCircle(uv, 0.5f, 0.4f, 0.015f);
    fragColor = vec4(vec3(c),1.0);
}