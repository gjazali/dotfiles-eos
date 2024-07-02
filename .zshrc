source ~/.dotfiles_path
source ~/.functions
source ~/.prompt

alias mv="mv -i"
alias cp="cp -i"
alias bltoff="sudo systemctl stop bluetooth.service \
  && sudo systemctl disable bluetooth.service"
alias blton="sudo systemctl enable bluetooth.service \
  && sudo systemctl start bluetooth.service"
alias tuser="loginctl terminate-user $USER"
alias fanmax="sudo ec_probe write 0xec 0x0d"
alias fanhigh="sudo ec_probe write 0xec 0x0a"
alias fanmedium="sudo ec_probe write 0xec 0x06"
alias fannormal="sudo ec_probe write 0xec 0x03"
alias fanread="sudo ec_probe read 0xec"
alias winpart="cd /run/media/jazali/OS"
alias openhere="xdg-open ."
alias pacclean="sudo pacman -Scc && yay -Scc"
alias pacorphansrm="sudo pacman -Qtdq | sudo pacman -R -"
alias pacorphansls="pacman -Qtdq"
alias mirrorupdatelocal="sudo reflector --verbose \
  --country Indonesia,Australia,Singapore \
  --age 12 \
  --latest 50 \
  --protocol https \
  --sort rate \
  --save /etc/pacman.d/mirrorlist"
alias mirrorupdate="sudo reflector --verbose \
  --age 12 \
  --latest 50 \
  --protocol https \
  --sort rate \
  --save /etc/pacman.d/mirrorlist"
alias mirrorshow="cat /etc/pacman.d/mirrorlist"
# Temporarily (given that `RESTORE_THRESHOLDS_ON_BAT=1` is set) remove the
# battery charge limit and charge to 100%
alias fullcharge="sudo tlp fullcharge BAT0"
# Since `RESTORE_THRESHOLDS_ON_BAT=1` is set, you most likely won't need this:
alias setcharge="sudo tlp setcharge"
# See all `pacman` packages sorted by size
alias pacls="pacman -Qi \
  | egrep '^(Name|Installed)' \
  | cut -f2 -d':' \
  | paste - - \
  | column -t \
  | sort -nrk 2 \
  | grep MiB \
  | less"

# Make NNN change to the directory its quitting from
# Be sure to run NNN using `n` instead of `nnn`
if [ -f /usr/share/nnn/quitcd/quitcd.bash_sh_zsh ]; then
  source /usr/share/nnn/quitcd/quitcd.bash_sh_zsh
fi

# WIP: Intercept illegal commands
#original_path="$PATH"
#PATH="/"
#command_not_found_handler() {(
  #illegal_command_pattern = '.*(sudo)?\s+rm\s+(((-[rR]f|-f[rR]|-f\s+-[rR]|-[rR]\s+-f|--recursive\s+--force|--force\s+--recursive|--recursive\s+-f|-r\s+--force|--force\s+-r|-f\s+--recursive)\s*(--no-preserve-root)?)|((--no-preserve-root)?\s+(-[rR]f|-f[rR]|-f\s+-[rR]|-[rR]\s+-f|--recursive\s+--force|--force\s+--recursive|--recursive\s+-f|-r\s+--force|--force\s+-r|-f\s+--recursive))) \/.*'

  #if [[ "$1" =~ $illegal_command_pattern ]]; then
    #echo 'Deleting the `root` directory is not allowed. This incident has been logged.' >&2
    #return 1
  #else
    #PATH="$original_path"
    #unset command_not_found_handler
    #"$@"
  #fi
#)}
