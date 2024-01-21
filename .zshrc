# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
export PATH="$PATH:/Users/clef/Desktop/Development/flutter/bin"
export PATH=/Library/PostgreSQL/15/bin:$PATH

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# routes
cf() {
    cd ~/Desktop/CP/Codeforces
    echo ">> 🎮 On Codeforces Now"
}
d() {
    cd ~/Desktop
    echo ">> 🏠 On Desktop Now"
}
u() {
    cd ~/Desktop/UBC
    echo ">> 🏫 Welcome to UBC"
}
dot() {
    cd ~/Desktop/dotfiles/
    echo ">> 📁 Dotfiles config..."
}
evim() {
    cd ~/.config/nvim/
    echo ">> ⚙️  in nvim config"
}

# bluetooth connections
headphone() {
    if [[ "$(blueutil --power)" == "0" ]]; then
        blueutil --power 1
        echo ">> 🔋 Bluetooth On"
    fi
    blueutil --connect f8-4e-17-a4-5d-89
    echo ">> 🎧 Connected to headphone"
}

speaker() {
    if [[ "$(blueutil --power)" == "0" ]]; then
        blueutil --power 1
        echo ">> 🔋 Bluetooth On"
    fi
    blueutil --connect 40-c1-f6-c2-70-35
    echo ">> 🎧 Connected to headphone"
}

# general purpose
make() {
    if [[ -z "$1" ]]; then
        echo ">> ☢️  No dir name given"
        return 1
    fi
    mkdir "$1"
    cd "$1"
}

force() {
    cf
    if [[ -z "$1" ]]; then
        echo ">> ☢️  Need dir name babe"
        return 1
    fi
    mkdir $1
    cd $1
    nvim A.cpp
}

dotfile() {
    if [[ -z "$1" ]]; then
        echo ">> ☢️  Need category babe"
    fi

    if [[ "$1" == "nvim" ]]; then
        cp -r ~/.config/nvim/ ~/Desktop/dotfiles/nvim/
        echo ">> 🎉 synced nvim dotfiles"
        return 0
    fi

    if [[ "$1" == "zshrc" ]]; then
        cp ~/.zshrc ~/Desktop/dotfiles/ 
        echo ">> 🎉 synced zshrc dotfile"
        return 0
    fi
}

o() {
    if [[ -z "$1" ]]; then
        nvim .
        return 0
    fi
    nvim "$1"
}

a() {
    if [[ -z "$1" ]]; then
        echo ">> ☢️  Need a commit message babe"
        return 1
    fi
    git add .
    git commit -m "$1"
    git push
}

clap() {
    afplay ~/Downloads/CHEERING_AND_CLAPPING_cct.wav
}

echo -e ""
echo -e ""

echo -e "\e[36m ╭╮╭╮╭╮╱╱╭╮╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╭━━╮╱╱╱╱╱╱╭╮╱╱╱╱╭━━━╮╱╱╱╱╱╱╱╱╱╱╭┳╮ \e[0m"
echo -e "\e[36m ┃┃┃┃┃┃╱╱┃┃╱╱╱╱╱╱╱╱╱╱╱╱╱╱┃╭╮┃╱╱╱╱╱╱┃┃╱╱╱╱┃╭━╮┃╱╱╱╱╱╱╱╱╱╱┃┃┃ \e[0m"
echo -e "\e[36m ┃┃┃┃┃┣━━┫┃╭━━┳━━┳╮╭┳━━╮╱╱┃╰╯╰┳━━┳━━┫┃╭╮╱╱┃┃╱┃┣━╮╭━━┳━╮╭━╯┃┃ \e[0m"
echo -e "\e[36m ┃╰╯╰╯┃┃━┫┃┃╭━┫╭╮┃╰╯┃┃━┫╱╱┃╭━╮┃╭╮┃╭━┫╰╯╯╱╱┃╰━╯┃╭╮┫╭╮┃╭╮┫╭╮┣╯ \e[0m"
echo -e "\e[36m ╰╮╭╮╭┫┃━┫╰┫╰━┫╰╯┃┃┃┃┃━┫╭╮┃╰━╯┃╭╮┃╰━┫╭╮╮╭╮┃╭━╮┃┃┃┃╭╮┃┃┃┃╰╯┣╮ \e[0m"
echo -e "\e[36m ╱╰╯╰╯╰━━┻━┻━━┻━━┻┻┻┻━━╯╰╯╰━━━┻╯╰┻━━┻╯╰╯╰╯╰╯╱╰┻╯╰┻╯╰┻╯╰┻━━┻╯ \e[0m"

cat << "EOF"


      |\      _,,,---,,_
ZZZzz /,`.-'`'    -.  ;-;;,_
     |,4-  ) )-,_. ,\ (  `'-'
    '---''(_/--'  `-'\_)


EOF

echo -e "\e[32m 1000011 01100001 01110100 01110011  01100011 01100001 01101110  01100110 01101100 01111001 00100001 \e[0m"
echo -e ""
echo -e ""



