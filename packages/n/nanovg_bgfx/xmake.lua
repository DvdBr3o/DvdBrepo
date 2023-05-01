package("nanovg_bgfx")
    set_kind("static")
    set_homepage("https://github.com/DvdBr3o/nanovg_bgfx")
    set_description("The nanovg utilities under bgfx.")
    set_urls("https://github.com/DvdBr3o/nanovg_bgfx.git")
    add_versions("archived", "2fe6103c1b2a70e8f12297be82593548ed644d75")
    on_install(function(package)
        import("package.tools.xmake").install(package)
    end)