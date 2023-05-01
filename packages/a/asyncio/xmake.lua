package("asyncio")
    set_homepage("https://github.com/netcan/asyncio")
    set_description("asyncio is a c++20 library to write concurrent code using the async/await syntax.")

    add_urls("https://github.com/netcan/asyncio.git")
    add_versions("1.0.0", "8acad8fb12307e0de099f1e354f2eff30b1593aa")

    add_deps("cmake")
    add_includedirs("include")

    on_install(function(package)
        import("package.tools.cmake").install(package)
    end)