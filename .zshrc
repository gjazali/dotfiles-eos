source ~/.dotfiles_path
source ~/.functions
source ~/.prompt

alias bluetoothoff="sudo systemctl stop bluetooth.service \
  && sudo systemctl disable bluetooth.service"
alias bluetoothon="sudo systemctl enable bluetooth.service \
  && sudo systemctl start bluetooth.service"
alias tuser="loginctl terminate-user $USER"

# Make NNN change to the directory its quitting from
# Be sure to run NNN using `n` instead of `nnn`
if [ -f /usr/share/nnn/quitcd/quitcd.bash_sh_zsh ]; then
  source /usr/share/nnn/quitcd/quitcd.bash_sh_zsh
fi
