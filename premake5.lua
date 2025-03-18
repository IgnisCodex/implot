project "ImPlot"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

	targetdir ("build/bin/" .. OUTPUT_DIR .. "/%{prj.name}")
	objdir ("build/int/" .. OUTPUT_DIR .. "/%{prj.name}")

	files {
		"implot.h",
		"implot.cpp",
		"implot_items.cpp",
		"imgui_internal.h",
		"implot_demo.cpp"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"