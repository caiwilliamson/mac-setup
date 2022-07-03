# Locate Homebrew installation.
[ -d /opt/homebrew ]
  and set -gx HOMEBREW_PREFIX /opt/homebrew # Apple Silicon.
  or  set -gx HOMEBREW_PREFIX /usr/local    # Intel.

# Add brew to PATH and set some environment variables.
eval ($HOMEBREW_PREFIX/bin/brew shellenv)

set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME  $HOME/.cache
set -gx XDG_DATA_HOME   $HOME/.local/share

set -gx ZDOTDIR          $XDG_CONFIG_HOME/zsh

set -gx ASDF_CONFIG_FILE $XDG_CONFIG_HOME/asdf/.asdfrc
set -gx ASDF_DATA_DIR    $XDG_DATA_HOME/asdf/.asdf

set -U  fish_greeting # Disable greeting.
set -gx HOMEBREW_NO_ANALYTICS 1
set -gx EDITOR vim
# https://github.com/rbenv/ruby-build/wiki#suggested-build-environment
set -gx RUBY_CONFIGURE_OPTS --with-openssl-dir=(brew --prefix openssl@1.1)

# Add asdf to PATH.
source (brew --prefix asdf)/libexec/asdf.fish

# Add subl and smerge to PATH.
fish_add_path --append --path /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/
fish_add_path --append --path /Applications/Sublime\ Merge.app/Contents/SharedSupport/bin/
