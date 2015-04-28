class people::ronco::links {

  $my_init_src = '/opt/init-src'

  file { ["/Users/${luser}/.homesick", "/Users/${luser}/.homesick/repos"]:
    ensure => directory,
    mode   => 0644,
    require => Repository["${my_init_src}/homeshick"],
  }

  file { "/Users/${luser}/.homesick/repos/homeshick":
    ensure  => link,
    mode    => '0644',
    target  => "${my_init_src}/homeshick",
    require => File["/Users/${luser}/.homesick/repos"],
  }
}
