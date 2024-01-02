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

# general purpose
l() {
    if [[ -z "$1" ]]; then
        echo ">> ☢️  No dir name given"
        return 1
    fi
    mkdir "$1"
    cd "$1"
}

gg() {
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
