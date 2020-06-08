float BlackCircle(vec2 uv, vec2 center, float r, float blur)
{
    uv -= center;
    float l = sqrt(uv.x * uv.x + uv.y * uv.y);
    float c = smoothstep(r, r + blur, l);
    return c;
}

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord / iResolution.xy;
    uv -= 0.5f;
    uv.x *= iResolution.x / iResolution.y;
    //uv.y *= iResolution.y / iResolution.x;
    
    float c1 = BlackCircle(uv, vec2(-0.3f, 0.5f), 0.15f, 0.015f);
    float c2 = BlackCircle(uv, vec2(0.5f, 0), 0.3f, 0.015f);
    float c = c1 + c2;
    fragColor = vec4(vec3(c), 1.0f);
}