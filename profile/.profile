# Aliases

alias open="xdg-open"

# Exports

export EDITOR=/usr/bin/nano
export GOPATH=$HOME/Documents/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN:~/bin
export VENVS=$HOME/Documents/venvs

# Custom commands

# Python Virtual Environment Shortcut
pyvenv() {
    if [ "$#" -ne "1" ];
    then
        echo "Expected 1 argument (name of virtual environment)."
        return 1
    fi
    source "$VENVS"/"$1"/bin/activate
}

_pyvenv_completion() {
    IFS=$'\n' tmp=( $(compgen -W "$(ls $VENVS)" -- "${COMP_WORDS[$COMP_CWORD]}" ))
    COMPREPLY=( "${tmp[@]// /\ }" )
}

complete -F _pyvenv_completion pyvenv
