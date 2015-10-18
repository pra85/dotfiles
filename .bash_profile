parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\n\[\e[32;1m\](\[\e[37;1m\]\u\[\e[32;1m\])-(\[\e[37;1m\]\w\[\e[32;1m\])\$(parse_git_branch)\n (\!\[\e[32;1m\])-> \[\e[0m\]"

source .aliases

