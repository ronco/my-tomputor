class people::ronco::git {
  git::config::global { 'core.editor':
    value  => '/opt/boxen/homebrew/bin/emacsclient'
  }
  git::config::global { 'push.default':
    value  => 'simple'
  }
  git::config::global { 'user.name':
    value  => 'Ron'
  }
  git::config::global { 'user.email':
    value  => 'ronco@costite.com'
  }

  # aliases
  git::config::global { 'alias.ci':
    value  => 'commit'
  }
  git::config::global { 'alias.rms':
    value  => '!f(){ git rm --cached \"$1\";rm -r \"$1\";git config -f .gitmodules --remove-section \"submodule.$1\";git config -f .git/config --remove-section \"submodule.$1\";git add .gitmodules; }; f'
  }
  git::config::global { 'alias.lol':
    value  => 'log --pretty=oneline --abbrev-commit --graph --decorate'
  }
  git::config::global { 'alias.lg1':
    value  => 'log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all'
  }
  git::config::global { 'alias.lg2':
    value  => 'log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all'
  }
  git::config::global { 'alias.lg':
    value  => '!"git lg1"'
  }
  git::config::global { 'alias.forkdiff':
    value  => '!bash -c \'git diff $(git merge-base "$1" "$2") "$2" "${@: 3}" \' -'
  }
  git::config::global { 'alias.deleted':
    value  => 'log --diff-filter=D --summary'
  }
}
