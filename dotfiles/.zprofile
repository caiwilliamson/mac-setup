# Locate Homebrew installation.
[ -d /opt/homebrew ] &&
  HOMEBREW_PREFIX=/opt/homebrew || # Apple Silicon.
  HOMEBREW_PREFIX=/usr/local       # Intel.

# Add brew to PATH and set some environment variables.
eval "$($HOMEBREW_PREFIX/bin/brew shellenv)"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/.asdfrc"
export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf/.asdf"

export IRBRC="$XDG_CONFIG_HOME/irb/.irbrc"

export HOMEBREW_NO_ANALYTICS=1
export EDITOR="vim"

# Add asdf to PATH.
source "$(brew --prefix asdf)"/libexec/asdf.sh

# Add subl and smerge to PATH.
path+=/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/
path+=/Applications/Sublime\ Merge.app/Contents/SharedSupport/bin/
