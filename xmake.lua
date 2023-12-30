add_requires("nlohmann_json")
add_requires("sqlitecpp")
add_requires("utest.h")
add_requires("gtkmm-3.0", {system = true})
add_requires("gstreamer-1.0", {system = true})
add_requires("sqlite3", {system = true})
add_requires("curlpp", {system = true})
add_requires("libcurl", {system = true})


add_rules("mode.release")

target("radihypn")
    set_kind("binary")
    add_files("main.cpp")
    add_packages("gstreamer-1.0")
    add_packages("gtkmm-3.0")
    add_packages("libcurl")
    add_packages("curlpp")
    add_packages("sqlite3")
    add_packages("sqlitecpp")
    add_packages("nlohmann_json")
    add_packages("utest.h")
    add_installfiles("misc/*.desktop", {prefixdir = "share/applications"})
    add_installfiles("misc/*.png", {prefixdir = "share/icons"})
