# Adds `~/.local/bin` to $PATH.
export PATH="$PATH:$HOME/.local/bin"

# Default program:
export EDITOR="nvim"

# XDG default paths:
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# ~/ Clean-up:
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

# SSH
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export SSH_ASKPASS=/usr/bin/ksshaskpass
export SSH_ASKPASS_REQUIRE=prefer

### Wayland Only ###

# Toolkit Backend Variables.
export GDK_BACKEND="wayland,x11,*"              # GTK: Use wayland if available, fall back to x11 if not.
export QT_QPA_PLATFORM="wayland;xcb"            # Qt: Use wayland if available, fall back to x11 if not.
export SDL_VIDEODRIVER="x11"                    # Run SDL2 applications on Wayland. Remove or set to x11 if games that provide older versions of SDL cause compatibility issues.
export CLUTTER_BACKEND="wayland"                # Clutter package already has wayland enabled, this variable will force Clutter applications to try and use the Wayland backend.

# QT Variables.
export QT_AUTO_SCREEN_SCALE_FACTOR="1"          # Enables automatic scaling, based on the monitor’s pixel density
export QT_WAYLAND_DISABLE_WINDOWDECORATION="0"	# Disables window decorations on Qt applications
export QT_QPA_PLATFORMTHEME="qt6ct"             # Tells Qt based applications to pick your theme from qt6ct, use with Kvantum.

# Electron
export ELECTRON_OZONE_PLATFORM_HINT="wayland"   # Forces electrom apps use wayland by default.
