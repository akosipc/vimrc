
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin:~/somewhere/arcanist/bin:~/.local/bin"

function branch_name() {
  echo 'git rev-parse --symbolic-full-name --abbrev-ref HEAD'
}

set novisualbell
set noerrorbells
alias v="vim ."

# Git

alias gc="git commit -av"
alias ga="git add ."
alias gs="git status"
alias gd="git diff"
alias gpush="git push "
alias gpull="git pull "
alias gpullo="git pull origin "
alias gpusho="git push origin " 
alias gb="git branch"
alias gbd="git branch -D "
alias gf="git fetch "
alias gch="git checkout "
alias gcb="git checkout -b "
alias gm="git merge "
alias grh="git reset --hard"
alias grs="git reset --soft "
alias gl="git log"
alias gdall="git branch --merged | grep -v '\*' | xargs -n 1 git branch -d"
alias gsta="git stash"
alias gstap="git stash pop"
alias gstal="git stash list"
alias glp="git log --pretty=oneline"

# Rails

alias b="bundle install"
alias r="bundle exec rails"
alias rdbm="bundle exec rake db:migrate"
alias rdbd="bundle exec rake db:drop"
alias rdbc="bundle exec rake db:create"
alias rdba="bundle exec rake db:drop db:create db:migrate db:test:prepare"
alias rr="bundle exec rake routes"

# Elixir / Phoenix
alias mpr="mix phoenix.routes"
alias mps="iex -S mix phoenix.server"
alias mt="mix test"
alias mgm="mix phoenix.gen.model "
alias mem="mix ecto.migrate"
alias mec="mix ecto.create"
alias mer="mix ecto.rollback"
alias meall="mix ecto.create ecto.migrate"
alias mdg="mix deps.get"

# Docker stuff
alias dt="docker tag "
alias dpush="docker push "
alias dbt="docker build . -t "

# FZF
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/sbin:$PATH"
export EDITOR="/usr/bin/vim"

source ~/.bashrc
eval `ssh-agent`
