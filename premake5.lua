workspace "TestDummy"

    architecture "x86_64"
    startproject "TestDummy"

    configurations {
        'Default'
    }

    flags { 
        "MultiProcessorCompile"
    }

project "TestDummy"

    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    staticruntime "On"

    targetdir "/bin"
    objdir "/bin/obj"

    includedirs {
        '/include'
    }

    files {
        "/include",
        "/src"
    }

    filter "configurations:Default"
        runtime "Debug"
        symbols "On"