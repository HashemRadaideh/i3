if [ -n "${DISPLAY+x}" ]; then
    xmodmap -e "keycode 135 = Super_R"
fi

# XDG variables
export XDG_SESSION_TYPE=x11
export XDG_CURRENT_DESKTOP=i3
export XDG_DATA_HOME="$HOME/.local/bin/"
export XDG_CONFIG_HOME="$HOME/.config/"
# export XDG_CONFIG_DIRS="$HOME/"
export XDG_STATE_HOME="$HOME/.local/state/"
export XDG_CACHE_HOME="$HOME/.cache/"

source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

eval $(/usr/bin/gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

mkdir -p "$HOME"/.local/share/keyrings

exec i3
