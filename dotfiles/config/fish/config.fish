# Disable greeting
set -U fish_greeting

# Environment variables
set -gx RUBY_CONFIGURE_OPTS "--with-openssl-dir=$(brew --prefix openssl@1.1)"
set -gx HOMEBREW_NO_ANALYTICS 1
set -gx EDITOR vim

# asdf
source /usr/local/opt/asdf/libexec/asdf.fish
