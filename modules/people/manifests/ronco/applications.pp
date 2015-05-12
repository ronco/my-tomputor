class people::ronco::applications {
  include chrome::canary

  include iterm2::stable
  include iterm2::colors::solarized_dark

  include flux

  include virtualbox

  class { 'vagrant':
    version => '1.7.2'
  }


}
