class people::ronco::links {

  $my_init_src = '/opt/init-src'

  file { "/Users/${luser}/.zshrc":
    ensure  => link,
    mode    => '0644',
    target  => "${my_init_src}/dotfiles/home/.zshrc",
    require => Repository["${my_init_src}/dotfiles"],
  }

  file { "/Users/${luser}/.oh-my-zsh":
    ensure  => link,
    target  => "${my_init_src}/oh-my-zsh",
    require => Repository["${my_init_src}/oh-my-zsh"],
  }

  file { "/Users/${luser}/.homesick":
    ensure  => link,
    mode    => '0644',
    target  => "${my_init_src}/homeshick",
    require => Repository["${my_init_src}/homeshick"],
  }
}
