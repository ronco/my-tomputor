class people::ronco::links {

  $my_init_src = '/opt/init-src'

  $my_homeshick_repos = "/users/${luser}/.homesick/repos"

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

  file { $my_homeshick_repos:
    ensure => directory,
    mode   => 0644,
    require => Repository["${my_init_src}/homeshick"],
  }

  file { "${my_homeshick_repos}/homeshick":
    ensure  => link,
    mode    => '0644',
    target  => "${my_init_src}/homeshick",
    require => File[$my_homeshick_repos],
  }
}
