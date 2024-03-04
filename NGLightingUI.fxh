//Stochastic Screen Space Ray Tracing
//Written by MJ_Ehsan for Reshade
//Version 0.9.3 - UI

//license
//CC0 ^_^

#if UI_DIFFICULTY == 0

#if !NGL_HYBRID_MODE
uniform int GI <
	ui_type = "combo";
	ui_label = "Mode";
	ui_items = "Reflection\0GI\0";
> = 1;
#endif

uniform int UI_QUALITY_PRESET <
	ui_type = "combo";
	ui_label = "Quality Preset";
	ui_items = "Low (16)\0Medium (64)\0High (160)\0Very High (320)\0Extreme (500)\0";
> = 1;

uniform float BUMP <
	ui_label = "Bump mapping";
	ui_type = "slider";
	ui_category = "Ray Tracing";
	ui_tooltip = "Adds tiny details to the lighting.";
	ui_min = 0.0;
	ui_max = 1;
> = 0.5;

uniform float roughness <
	ui_label = "Roughness";
	ui_type = "slider";
	ui_category = "Ray Tracing";
	ui_tooltip = "Blurriness of the reflections.";
	ui_min = 0.0;
	ui_max = 0.999;
> = 0.4;

uniform float EXP <
	ui_label = "Reflection rim fade";
	ui_type = "slider";
	ui_category = "Blending Options";
	ui_min = 1;
	ui_max = 10;
> = 4;

uniform float AO_Intensity <
	ui_label = "AO Power";
	ui_type = "slider";
	ui_category = "Blending Options";
	ui_tooltip = "Ambient Occlusion falloff curve";
> = 0.67;

uniform float depthfade <
	ui_label = "Depth Fade";
	ui_type = "slider";
	ui_category = "Blending Options";
	ui_tooltip = "Higher values decrease the intesity on distant objects.\n"
				 "Reduces blending issues with in-game fogs.";
	ui_min = 0;
	ui_max = 1;
> = 0.8;

uniform bool LinearConvert <
	ui_type = "radio";
	ui_label = "sRGB to Linear";
	ui_category = "Color Management";
	ui_tooltip = "Disable if the game is HDR";
	ui_category_closed = true;
> = 1;

uniform float2 SatExp <
	ui_type = "slider";
	ui_label = "Saturation || Exposure";
	ui_category = "Color Management";
	ui_tooltip = "Left slider is Saturation. Right one is Exposure.";
	ui_category_closed = true;
	ui_min = 0;
	ui_max = 4;
> = float2(1,1);

uniform uint debug <
	ui_type = "combo";
	ui_items = "None\0Lighting\0Depth\0Normal\0Accumulation\0Roughness Map\0";
	ui_category = "Extra";
	ui_category_closed = true;
	ui_min = 0;
	ui_max = 4;
> = 0;

#endif
