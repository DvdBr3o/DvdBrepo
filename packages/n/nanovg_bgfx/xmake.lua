package("nanovg_bgfx")
    set_homepage("https://github.com/DvdBr3o/nanovg_bgfx")
    set_description("The nanovg utilities under bgfx.")
    add_urls("https://github.com/DvdBr3o/nanovg_bgfx.git")
    add_versions("2023.05.01", "b15eed5740d17aa1b0ebf1bd53511c0a8c66320f")
    on_install(function(package)
        import("package.tools.xmake").install(package)
    end)