if status is-interactive
    abbr --add l lsd
    abbr --add ls lsd
    abbr --add la lsd -a
    abbr --add ll lsd -l
    abbr --add lla lsd -la
    abbr --add lt lsd --tree --depth 2
    abbr --add j z
    abbr --add gs git status
    abbr --add ga git add
    abbr --add gc git commit -m
    abbr --add gp git push
    abbr --add gpl git pull
    abbr --add vi nvim
    abbr --add yy yazi
    abbr --add fuck fk
    abbr -a L --position anywhere --set-cursor "% | less"
    abbr -a G --position anywhere --set-cursor "% | rg"
    abbr -a F --position anywhere --set-cursor "% | fzf"
    abbr -a S --position anywhere --set-cursor "% | source"
end
