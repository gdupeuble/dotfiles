# bash aliases
# -- git --
alias got='git'
alias gka='gitk --all'
alias groot='cd $(git rev-parse --show-toplevel)'

# -- cd --
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# -- ls --
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias ll='ll alF'
alias la='ls -A'
alias l='ls -CF'

# -- vim --
alias vi='vim'

# -- xampp --
alias lampp='sudo /opt/lampp/lampp start'
alias stoplampp='sudo /opt/lampp/lampp stop'

# -- scilab --
alias scilab='/home/ekop/Documents/important/montreal/DD_montreal/MRINF/scilab/scilab-5.5.2/bin/scilab'

# -- PoE --
alias pathofexile='WINEARCH=win32 WINEPREFIX=~/.PoE wine /home/ekop/.PoE/drive_c/Program\ Files/Grinding\ Gear\ Games/Path\ of\ Exile/PathOfExile.exe --noasync'
