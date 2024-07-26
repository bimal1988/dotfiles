function fish_reload_config
    source ~/.config/fish/config.fish
    for file in ~/.config/fish/conf.d/*.fish
        source $file
    end
end
