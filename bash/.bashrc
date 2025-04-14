#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/stimp/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/stimp/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/stimp/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/stimp/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Command for engaging x11 display for docker 
export ELECTRON_ENABLE_WAYLAND=1
export OZONE_PLATFORM=wayland

# Zoxide 
eval "$(zoxide init bash)"


# Setting QT application to run on x11 or xwayland:
export QT_QPA_PLATFORM=xcb

export EDITOR=nvim


