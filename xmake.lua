add_rules("mode.debug", "mode.release")

set_project("xxse-CsvManager-header")
set_version("0.1.0")
set_license("GPL-3.0")
set_encodings("utf-8")

set_languages("c++23")

add_requires("rapidcsv")
includes("header")
target("xxse-CsvManager-header")
    set_kind("headeronly")
    add_packages("rapidcsv")
    add_headerfiles("header/CsvManager.h")
    add_headerfiles("header/utils/*.h", {prefixdir = "utils"} )

target("xxse-CsvManager-header-dev")
    set_kind("headeronly")
    add_packages("rapidcsv")
    add_headerfiles("header/CsvManager.h")
    add_headerfiles("header/utils/*.h", {prefixdir = "utils"})
    local add_macro_var = function(name,value)
        add_defines(name.."="..value.."");
    end
    local add_macro_var_str = function(name,value)
        add_defines(name.."=\""..value.."\"");
    end
    add_macro_var_str("XXSE_CSV_MANAGER_XXSE_NAME","SFSE");
    add_macro_var_str("XXSE_CSV_MANAGER_XXSE_PLUGIN_NAME","test");
    add_macro_var("XXSE_CSV_MANAGER_LOGGER_NAMESPACE","CsvManagerUse::NoLogger");


