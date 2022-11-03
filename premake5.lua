group "Dependencies"
project "spdlog"
    kind "StaticLib"
    language "C++"
	staticruntime "off"

 	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("intermediate/" .. outputdir .. "/%{prj.name}")

 	files
	{
        "include/spdlog/src/**.h", 
        "include/spdlog/src/**.hpp", 
        "include/spdlog/src/**.c", 
        "include/spdlog/src/**.cpp", 
    }

	includedirs
	{
		"include"
	}

 	filter "system:windows" 
        systemversion "latest"
        staticruntime "On"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"