# Mac Setup

A simple script to set up my Mac for web development. It's safe to run multiple times and provides useful (and pretty) feedback. It even generates a new SSH key and adds it to Github for you because ain't nobody got time for that.

Installs/configures:
* Dotfiles
* Homebrew
* Zsh
* Git
* SSH Keys
* Prezto
* rbenv (Ruby)
* Rails
* PostgreSQL
* Node.js & npm
* Vim
* Sublime Text Settings
* MacOS Settings

## Installation

Just run the one-liner below. It calls the `setup` script, which clones this repo to your home directory as `.mac-setup` (if it doesn't already exist) and then runs the setup.

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/caiwilliamson/mac-setup/master/setup)
```

`setup` is safe to run multiple times. This is useful if, for instance, something fails to install or your internet connection dies half-way through 😐.
