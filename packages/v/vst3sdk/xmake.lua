package("vst3sdk")
    set_homepage("https://github.com/steinbergmedia/vst3sdk")
    set_description("VST 3 Plug-In SDK")

    add_urls("https://github.com/steinbergmedia/vst3sdk.git")
    add_versions("3.7.7", "358b72ee61bc67fb4592b0d492e0c6a1211ebf11")

    add_deps("cmake")

    add_configs("vstgui", { description = "Add VSTGUI Support", default = true, type = "boolean" })
    add_configs("samples", { description = "Add VST3 Plug-ins Samples to the solution", default = false, type = "boolean" })

    on_install(function(package)
        local configs = {}
        table.insert(configs, "-DCMAKE_BUILD_TYPE=" .. (package:debug() and "Debug" or "Release"))
        table.insert(configs, "-DBUILD_SHARED_LIBS=" .. (package:config("shared") and "ON" or "OFF"))
        table.insert(configs, "-DSMTG_ADD_VSTGUI=" .. (package:config("vstgui") and "ON" or "OFF"))
        table.insert(configs, "-DSMTG_ADD_VST3_PLUGINS_SAMPLES=" .. (package:config("samples") and "ON" or "OFF"))

        os.cp("./**.h", package:installdir("include"))
        package:add("includedirs", "include")

        import("package.tools.cmake").install(package, configs)
    end)