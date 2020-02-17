// 2020/02/17
void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord/iResolution.xy;
    uv -= 0.5;
    uv.y *= 5.0;
    uv.x *= 25.0;

    // Time varying pixel color
    vec3 col = (uv.y >= sin(iTime-uv.x) && uv.y <= sin(iTime-uv.x+0.2))
            || (uv.y <= sin(iTime-uv.x) && uv.y >= sin(iTime-uv.x+0.2))
        	? vec3(0) : vec3(1);

    // Output to screen
    fragColor = vec4(col,1.0);
}