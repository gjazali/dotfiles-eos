# UI Scaling
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCREEN_SCALE_FACTORS=2
export GDK_SCALE=2
export GDK_DPI_SCALE=0.45

# QT Theme
export QT_QPA_PLATFORMTHEME=qt6ct

# Defaults
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export SUDO_EDITOR=/usr/bin/nvim
export TERMINAL=/usr/bin/kitty

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
