export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

#ALIAS
#alias something
alias i='yay -S'
alias u='yay -Rns'
alias c='code'

#alias downloadYT
alias y1080='yt-dlp -N 8 -f "bv*[height<=1080]+ba/b" --merge-output-format mp4'

alias yt='yt-dlp -N 8 \
  -f "bv*[height<=720][fps<=30]+ba/b" \
  --merge-output-format mp4 \
  --replace-in-metadata title "^.* - (.*) - Thầy.*$" "\1" \
  -o "%(title)s.%(ext)s"'
alias ytsound="yt-dlp -x --audio-format mp3"

#alias fun stuff
alias clock='tty-clock -s -c'
alias music='cava'
alias stats='btop'
alias pipe='pipes.sh -p 3 -K'
alias lava='lavat'
alias nyan='nyancat'
alias tree='cbonsai -S -t 0.05 -i -c +'
alias aqua='asciiquarium'
alias train='while true; do sl; done'

#alias Battery life
alias life='upower -i /org/freedesktop/UPower/devices/battery_BAT1'
# w() {
#   WALLPAPER="$HOME/Wallpapers/$1"
#   awww img "$WALLPAPER" \
#     --transition-type wipe \
#     --transition-pos 0.5,0.5 \
#     --transition-duration 4

#   matugen image "$WALLPAPER" --source-color-index 0

#   echo "$WALLPAPER" > ~/.config/hypr/current_wallpaper
#   sync
#   swaync-client -rs 2>/dev/null
# }

#plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#run
fastfetch
PROMPT='  󱞵 %~  '
