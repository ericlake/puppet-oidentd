# Class: oidentd::service
#
# Description
#   This class is to sensure that the oidentd service is in the desired state.
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
class oidentd::service (
  ensure = $oidentd::params::service_ensure,
  enable = $oidentd::params::enable
) inherits oidentd::params {
  service { 'oidentd':
    ensure  => $ensure,
    enable  => $enable,
    require => File[$oidentd::params::config_file],
  }
}
