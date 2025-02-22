grim -g "$(slurp)" $(xdg-user-dir PICTURES)/Screenshots/$(date +'%s_grim.png')
wl-copy < $(xdg-user-dir PICTURES)/Screenshots/$(date +'%s_grim.png')
