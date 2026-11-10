# my dotfiles

this repository contains configuration for my only and main machine (which is called "obsidian", because it's the foundation for my computer experience as of now)

configuration files included:
- X11 initialization and configuration files;
- Bash shell (not following default locations; see more below)
- Fonts
- Git
- Default applications and directories (still WIP)
- mpv
- [vis text editor](https://github.com/martanne/vis/)
- small script utilities

## Bash shell configuration

since i am very well organized, i've moved my bash files out of my home directory to avoid clutter. this is the setup i have:

on `/etc/profile` i set the profile file i want to use:
```sh
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# test if login shell. if it is, then run profile in xdg directory
case "$0" in
  "-bash")
    if [ -f "$XDG_CONFIG_HOME/bash/profile" ]; then
      . "$XDG_CONFIG_HOME/bash/profile"
    fi
    ;;
  "-"*)
    . "$HOME/.profile"
    ;;
  *)
    ;;
esac
```
and similarly on `/etc/bash.bashrc`:

```sh
if [[ -r "$HOME/.config/bash/bashrc" ]]; then
  . "$HOME/.config/bash/bashrc"
fi
```

