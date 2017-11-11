# Alias
alias terminal='open -a "Terminal"'

if [ "$(uname)" = 'Darwin' ]; then
    alias ls='ls -FGlAhp'
else
    alias ls='ls -FGlAhp --color=auto'
fi

hostname=`hostname | cut -c 1-5`
PS1="[\u@$hostname:$YROOT_NAME \W]"

cdls () {
    \cd "$@" && ls
}
alias cd="cdls"

calc() {
    awk "BEGIN {print $*}"
}

alias sort="gsort"

HISTSIZE=50000
HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/yoshi/Downloads/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/yoshi/Downloads/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/yoshi/Downloads/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/yoshi/Downloads/google-cloud-sdk/completion.bash.inc'
fi
