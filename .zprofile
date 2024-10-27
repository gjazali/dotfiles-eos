# Add Composer-installed binaries to `$PATH`
PATH=$PATH:/home/jazali/vendor/bin

# UI Scaling
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCREEN_SCALE_FACTORS=2
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

# QT Theme
export QT_QPA_PLATFORMTHEME=qt5ct:qt6ct

# KDE
export XDG_MENU_PREFIX=plasma- run kbuildsycoca6

# Defaults
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export SUDO_EDITOR=/usr/bin/nvim
export TERMINAL=/usr/bin/alacritty

# NNN
# Theme
BLK="0B"
CHR="0B"
DIR="04"
EXE="06"
REG="00"
HARDLINK="06"
SYMLINK="06"
MISSING="00"
ORPHAN="09"
FIFO="06"
SOCK="0B"
OTHER="06"

export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"

# Bookmarks
export NNN_BMS='h:~;d:~/Downloads;c:~/.dotfiles/.config;n:~/.dotfiles/.config/nvim'

# fzf
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' --color=fg:#ffffff,bg:#000000,hl:#007fff --color=fg+:#ffffff,bg+:#000000,hl+:#46a2ff --color=info:#edda53,prompt:#e85468,pointer:#ff80ff --color=marker:#54ca83,spinner:#ff80ff,header:#70e1e8'
