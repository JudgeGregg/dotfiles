typeset -U path
path=(~/.local/bin $path)

export FZF_DEFAULT_COMMAND='fd --type f'

export SSH_AUTH_SOCK=/run/user/1000/ssh-agent.socket

export EDITOR='nvim'
export PAGER='less'
export XDG_CONFIG_HOME=$HOME/.config

#Golang
export GOPATH=$HOME/Projects/Go
export PATH=$PATH:$GOPATH/bin

#Java
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export JAVA_FONTS=/usr/share/fonts/TTF

#RISC-V Toolchain
export RISCV_PATH="$HOME/Projects/HiFive/riscv64-unknown-elf-gcc-8.3.0-2019.08.0-x86_64-linux-ubuntu14/"
export PATH=$PATH:$RISCV_PATH/bin
