class people::ronco::repositories {

  $my_init_src = '/opt/init-src'

  file { $my_init_src:
    ensure => directory,
    mode   => 0644,
  }

  repository { "${my_init_src}/dotfiles":
    source  => 'ronco/dotfiles-castle',
    require => File[$my_init_src]
  }

  repository { "${my_init_src}/emacs24-starter-kit":
    source  => 'ronco/emacs24-starter-kit',
    require => File[$my_init_src]
  }

  repository { "${my_init_src}/z":
    source  => 'rupa/z',
    require => File[$my_init_src]
  }

  repository { "${my_init_src}/oh-my-zsh":
    source  => 'robbyrussell/oh-my-zsh',
    require => File[$my_init_src]
  }
}
