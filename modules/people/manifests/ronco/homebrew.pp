class people::ronco::homebrew {

  include brewcask

  $homebrew_packages = [
                        'ag',
                        'tmux',
                        'tree',
                        'wget',
                        'zsh',
                        'git-flow',
                        'aspell',
                        'z'
                        ]

  package { $homebrew_packages: }

  package { 'cask':
    ensure  => present,
    require => Package['emacs'],
  }

  package { 'emacs':
    ensure          => present,
    install_options => [
      '--cocoa',
      '--srgb'
    ],
  }

  package { 'google-chrome': provider => 'brewcask' }
  package { 'firefox': provider => 'brewcask' }
  package { 'slate': provider => 'brewcask' }
  package { 'dropbox': provider => 'brewcask' }
  package { '1password': provider => 'brewcask' }
  package { 'hipchat': provider => 'brewcask' }
  package { 'virtualbox': provider => 'brewcask' }
  package { 'vagrant': provider => 'brewcask' }
  package { 'evernote': provider => 'brewcask' }
  package { 'dash': provider => 'brewcask' }
  # broken as of 4/27/2015
  # package { 'mac2imgur': provider => 'brewcask' }
  package { 'sequel-pro': provider => 'brewcask' }
  package { 'spotify': provider => 'brewcask' }
  package { 'bartender': provider => 'brewcask' }
  package { 'imageoptim': provider => 'brewcask' }
  package { 'grandperspective': provider => 'brewcask' }
  package { 'aerial': provider => 'brewcask' }
  package { 'seil': provider => 'brewcask' }
  package { 'karabiner': provider => 'brewcask' }

}
