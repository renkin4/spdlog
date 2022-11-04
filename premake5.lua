group "Dependencies"
project "spdlog"
    kind "StaticLib"
    language "C++"
	staticruntime "off"

 	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("intermediate/" .. outputdir .. "/%{prj.name}")

 	files
	{
        "src/**.h", 
        "src/**.hpp", 
        "src/**.cpp", 
        "src/**.c", 
        "include/spdlog/src/**.h", 
        "include/spdlog/src/**.hpp", 
        "include/spdlog/src/**.c", 
        "include/spdlog/src/**.cpp", 
    }

	includedirs
	{
		"include"
	}

    defines
    {
        SPDLOG_COMPILED_LIB
    }

 	filter "system:windows" 
        systemversion "latest"
        staticruntime "On"

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"