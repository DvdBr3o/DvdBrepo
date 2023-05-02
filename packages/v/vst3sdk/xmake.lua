package("vst3sdk")
    set_homepage("https://github.com/steinbergmedia/vst3sdk")
    set_description("VST 3 Plug-In SDK")

    add_urls("https://github.com/steinbergmedia/vst3sdk.git")
    add_versions("3.7.7", "358b72ee61bc67fb4592b0d492e0c6a1211ebf11")

    add_deps("cmake")

    add_configs("vstgui", { description = "Add VSTGUI Support", default = true, type = "boolean" })

    add_includedirs(".")

    on_install(function(package)
        local configs = {}
        table.insert(configs, "-DSMTG_ADD_VSTGUI=" .. (package:config("vstgui") and "ON" or "OFF"))
        import("package.tools.cmake").install(package, configs)
    end)