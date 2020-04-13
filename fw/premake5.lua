require "eclipse-mk" -- To support eclipse makefile project generator
require "armgcc".exactver(9, 2, 1) -- Automaticka detekce toolchainu pro arm-none-eabi-

workspace "dykodac"
   configurations { "Debug"}
   architecture "ARM"
   libdirs { "src/vendor_libs/**" }
   targetdir "build/bin"
   targetname "%{prj.name}_%{cfg.longname}"
   objdir "!build/%{cfg.longname}/obj/"

    newaction { -- V Budoucnu muze zmizet (zatim neni do verze 5 naportovano)
      trigger     = "clean",
      description = "clean the software",
      execute     = function ()
         print("clean the build...")
         os.rmdir("build")
         print("done.")
      end
   }
   project "dykodac"
      toolset "gcc"
      kind "ConsoleApp"
      language "C++"   
      buildoptions {"-mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 ", "-O1", "-g3 ", "-Wall", "-ffunction-sections", "-mlong-calls", "-mthumb"}
      linkoptions { "-T \"./src/sys_boot/samd51j20a_flash.ld\"", "-g3", "-mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 ",
      "-Wl,--start-group", "-lm", "-Wl,--end-group", "-mthumb",
       "--specs=nosys.specs", "-Wl,--gc-sections"}

       optimize "Debug"
       symbols "On"

      filter "files:**.cpp"
      buildoptions { "-std=gnu++1y", "-fabi-version=0", "-fno-exceptions", "-fno-rtti", "-fno-use-cxa-atexit", "-fno-threadsafe-statics", "-fcheck-new" }  
   filter "files:**.c"
      buildoptions { "-std=gnu11" }
   filter "files:**.S"
      buildoptions { "-x assembler-with-cpp" }
   filter {}

      defines { "__SAMD51J20A__","DEBUG"}
      targetextension ".elf"

      postbuildcommands {      
      '"%{cfg.gccprefix}objcopy" -O binary "%{cfg.buildtarget.relpath}" "%{cfg.targetdir}/%{cfg.buildtarget.basename}.bin"',
      '"%{cfg.gccprefix}objdump" --source --all-headers --demangle --debugging --disassemble --file-headers --line-numbers --reloc --syms --wide "%{cfg.buildtarget.relpath}" > %{cfg.targetdir}/%{cfg.buildtarget.basename}.lss',
      '"%{cfg.gccprefix}size" --format=berkeley --totals "%{cfg.buildtarget.relpath}"'
      }
   
      includedirs {  "./src/","./src/**"}
        

      files { -- ** jsou rekurzivni, * neni
         "./src/**.h",
         "./src/**.hpp",
         "./src/**.cpp",
         "./src/**.c",
         "./src/**.S"
      }

      excludes {"./**example**"}

filter "configurations:Debug"
      defines { "DEBUG"}
      optimize "Debug"
      symbols "On"