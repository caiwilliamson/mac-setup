# Mac Setup

An idempotent script to automatically set up my programming tools.

Installs/configures:
* Dotfiles
* Homebrew
* Fish
* asdf
* Ruby
* Node.js
* Git
* GitHub SSH Keys
* Rails
* PostgreSQL
* Redis
* Vim
* Sublime Text Settings
* Sublime Merge Settings
* MacOS Settings
* Terminal Profile

## Prerequisites
Make sure you have a personal access token on your GitHub account with the `write:public_key` permission. When the script asks for your GitHub password, enter this key. This will allow the script to upload your new GitHub SSH public key if one is generated. You can view your personal access tokens and create new ones [here][1].

## Installation
```bash
bash <(curl -fsSL https://raw.githubusercontent.com/caiwilliamson/mac-setup/master/setup)
```

[1]: https://github.com/settings/tokens
