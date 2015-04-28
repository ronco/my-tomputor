class people::ronco::osx_config {

  # ZSH
  osx_chsh { $::luser:
    shell   => '/opt/boxen/homebrew/bin/zsh',
    require => Package['zsh'],
  }

  file_line { 'add zsh to /etc/shells':
    path    => '/etc/shells',
    line    => "${boxen::config::homebrewdir}/bin/zsh",
    require => Package['zsh'],
  }

  # global settings
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::disable_autocorrect
  include osx::global::tap_to_click

  # Finder settings
  include osx::finder::show_all_on_desktop
  include osx::finder::empty_trash_securely
  include osx::finder::unhide_library
  include osx::finder::enable_quicklook_text_selection
  include osx::finder::show_all_filename_extensions
  include osx::finder::no_file_extension_warnings

  # Dock Settings
  include osx::dock::autohide
  include osx::dock::clear_dock

  # Screen Zoom
  include osx::universal_access::ctrl_mod_zoom
  include osx::universal_access::enable_scrollwheel_zoom

  # Key Repeat
  class { 'osx::global::key_repeat_delay':
    delay => 15
  }
  include osx::global::key_repeat_rate

  # Capslock becomes Control
  include osx::keyboard::capslock_to_control

  # Hot Corners
  osx::dock::hot_corner { 'Show the desktop':
    position => 'Bottom Right',
    action => 'Desktop'
  }
  osx::dock::hot_corner { 'Put Display to Sleep':
    position => 'Bottom Left',
    action => 'Put Display to Sleep'
  }

  # Make Developer Tools available in Safari (ie: right-click and see
  # Inspect Element)
  include osx::safari::enable_developer_mode

  # Recovery Message
  $recovery_owner = "This computer belongs to Ron White."
  $recovery_contact = "If found, please contact ronco@costite.com or 303-578-0766."
  osx::recovery_message { "${recovery_owner} ${recovery_contact}": }
}
