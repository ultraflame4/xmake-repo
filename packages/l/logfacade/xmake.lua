package("logfacade")
    set_kind("library", {headeronly = true})
    set_description("The logfacade package")
    add_deps("vcpkg::fmt")

    add_urls("https://github.com/ultraflame4/logfacade.git")
    add_versions("1.0", "8ef06beaf0784980c1da348dbf5e793c74388f18")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)
