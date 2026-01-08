# Better ls
alias ls='lsd --group-directories-first -h'
alias ll='lsd --group-directories-first -hl'
alias lst='lsd --group-directories-first --tree --depth=2 -h'
alias cdd='cd $(fd -t d --search-path "~/Documents" | fzf)'

# Utils
alias upgrade="sudo apt update && sudo apt full-upgrade -y"
alias optpng='optipng -strip all -o7 '
alias pdfcompress='gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default -dNOPAUSE -dQUIET -dBATCH -sOutputFile=compressed.pdf'
alias curlspeed='curl -s -w "Testing Website Response Time for: %{url_effective}\n\nLookup Time:\t\t%{time_namelookup}\nConnect Time:\t\t%{time_connect}\nAppCon Time:\t\t%{time_appconnect}\nRedirect Time:\t\t%{time_redirect}\nPre-transfer Time:\t%{time_pretransfer}\nStart-transfer Time:\t%{time_starttransfer}\n\nTotal Time:\t\t%{time_total}\n" -o /dev/null'
alias docker='sudo docker'

# Rust
alias rust-config='source ~/.cargo/env'

# Vim
alias vi='nvim'
alias svi='sudo nvim'
alias tn='tmux new -s $(pwd | sed "s/.*\///g")'

# GIT
alias gita='git add .'
alias gits='git status'
alias gitc='git commit -m'
alias gitd='git difftool -t vimdiff -y'

# Python
alias pyc='pip install --user -U pip wheel setuptools; python3 -m venv .venv; source .venv/bin/activate; pip install -U pip wheel setuptools pylint; if [ -f requirements.txt ]; then pip install -r requirements.txt; fi; if [ -f setup.py ]; then pip install .; fi;'
alias pya='source .venv/bin/activate && source source.sh'

# Nodejs
alias npmi='npm install'
alias npmr='npm run serve'
