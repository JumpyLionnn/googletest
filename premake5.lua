project "gtest"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
    staticruntime "On"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")


	files
	{
        "googletest/include/**.h",
        "googletest/src/gtest-all.cc",
	}

    includedirs
	{
		"googletest/include",
		"googletest/"
	}

	filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"