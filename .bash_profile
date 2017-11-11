# Alias
alias terminal='open -a "Terminal"'

if [ "$(uname)" = 'Darwin' ]; then
    alias ls='ls -FGlAhp'
else
    alias ls='ls -FGlAhp --color=auto'
fi

#hostname=`hostname | cut -c 1-5`
#PS1="[\u@$hostname:$YROOT_NAME \W]"

cdls () {
    \cd "$@" && ls
}
alias cd="cdls"

calc() {
    awk "BEGIN {print $*}"
}

alias sort="gsort"

# Parameters
HISTSIZE=50000
HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '

# Path
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$HOME/bin:$PATH"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# rbenv
eval "$(rbenv init -)"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    echo $file
	[ -r "$file" ] && [ -f "$file" ] && source "$file" && echo "$file";
done;
unset file;

