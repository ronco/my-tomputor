class people::ronco::applications {
  include chrome
  include chrome::canary
  include firefox
  include slate

  include virtualbox

  class { 'vagrant':
    version => '1.7.2'
  }

  include iterm2::stable
  include iterm2::colors::solarized_dark

  include onepassword
  include onepassword::chrome

}
