# Disable greeting.
set -U fish_greeting

# Set HOMEBREW_PREFIX based on processor architecture.
switch (uname -m)
  case x86_64; set HOMEBREW_PREFIX "/usr/local" # Intel.
  case arm64; set HOMEBREW_PREFIX "/opt/homebrew" # Apple Silicon.
  case '*'; echo "Processor architecture not recognised" && exit 1
end

set -gx HOMEBREW_NO_ANALYTICS 1
set -gx EDITOR vim
# https://github.com/rbenv/ruby-build/wiki#suggested-build-environment
set -gx RUBY_CONFIGURE_OPTS "--with-openssl-dir=$($HOMEBREW_PREFIX/bin/brew --prefix openssl@1.1)"

# Prepend asdf directories to PATH.
source $HOMEBREW_PREFIX/opt/asdf/libexec/asdf.fish

# Prepend Homebrew directories to PATH on Apple Silicon Macs only. On Intel
# machines Homebrew uses /usr/local which is already added to PATH.
[ (uname -m) = arm64 ] && eval "$($HOMEBREW_PREFIX/bin/brew shellenv)"

# Append subl and smerge CLI tool directories to PATH.
fish_add_path --append /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/
fish_add_path --append /Applications/Sublime\ Merge.app/Contents/SharedSupport/bin/
