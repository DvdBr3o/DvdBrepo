package("nanovg_bgfx")
    set_kind("static")
    set_description("The nanovg utilities under bgfx.")
    set_urls("https://github.com/DvdBr3o/nanovg_bgfx.git")
    on_install(function(package)
        local configs = {}
        import("package.tools.xmake").install(package, configs)
    end)