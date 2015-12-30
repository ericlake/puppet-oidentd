# Class: oidentd::config
#
# Description
#   This class is ensures that a config file is created at /etc/oidentd.conf
#
# Parameters:
#   This class takes no parameters
#
# Actions:
#   This class installs oidentd package.
#
# Requires:
#   This module has no requirements.
#
# Sample Usage:
#   This method should not be called directly.
class oidentd::config (
  ensure      = $oidentd::params::ensure,
  config_file = $oidentd::params::config_file,
  source      = undef,
  content     = undef,
) inherits oidentd::params {
  file { $config_file:
    ensure  => $ensure,
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    source  => $source,
    content => $content,
    notify  => Service['oidentd'],
  }
}
