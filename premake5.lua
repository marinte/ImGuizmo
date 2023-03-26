project "ImGuizmo"
  kind "StaticLib"
  language "C++"
 
  location "%{wks.location}/projects"

  targetdir "bin/"
  objdir "%{cfg.targetdir}/%{prj.name}/obj"

  files { 
    "ImGuizmo.h",
    "ImGuizmo.cpp"
  }

  includedirs{
    "../imgui"
  }

  filter "system:windows"
    systemversion "latest"
    cppdialect "C++17"
    staticruntime "on"

  filter "configurations:Debug"
    runtime "Debug"
    symbols "on"
    
  filter "configurations:Release"
    runtime "Release"
    optimize "on"