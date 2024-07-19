rule("configure")
    add_deps("win.sdk.resource")
    on_config(function(target)
        import("core.base.semver")
        import("core.project.depend")
        import("core.project.project")
        local configs = target:extraconf("rules", "xxse-CsvManager-header Config")
        if not configs.options then
            configs.options = {}
        end
        target:add("defines","XXSE_CSV_MANAGER_CONFIGURED");
        local add_macro_var = function(name,value)
            target:add("defines",name.."="..value);
        end
        local add_macro_var_str = function(name,value)
            target:add("defines",name.."=\""..value.."\"");
        end
        add_macro_var_str("XXSE_CSV_MANAGER_XXSE_NAME",string.upper(configs.xxse_name));
        add_macro_var_str("XXSE_CSV_MANAGER_XXSE_PLUGIN_NAME",target:name());
        add_macro_var("XXSE_CSV_MANAGER_LOGGER_NAMESPACE",configs.logger_namespace or "nologger");
    end)
