
export PATH=$PATH:/Applications/Postgres.app/Contents/MacOS/bin/

function branch_name() {
  echo 'git rev-parse --symbolic-full-name --abbrev-ref HEAD'
}

set visualbell
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
alias r="rails"
alias rdbm="rake db:migrate"
alias rdbd="rake db:drop"
alias rdbc="rake db:create"
alias rdba="rake db:drop db:create db:migrate db:test:prepare"
alias rr="rake routes"

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

# FZF
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/sbin:$PATH"

