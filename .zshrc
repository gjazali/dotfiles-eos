source .dotfiles_path
source .functions
source .prompt

alias bluetoothoff="sudo systemctl stop bluetooth.service && sudo systemctl disable bluetooth.service"
alias bluetoothon="sudo systemctl enable bluetooth.service && sudo systemctl start bluetooth.service"
alias blimoff="sudo systemctl stop tp-battery-mode.service && sudo systemctl disable tp-battery-mode.service"
alias blimon="sudo systemctl enable tp-battery-mode.service && sudo systemctl start tp-battery-mode.service"
alias tuser="loginctl terminate-user $USER"
