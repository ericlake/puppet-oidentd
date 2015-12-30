# Class: oidentd::package
#
# Description
#   This class is designed to install the oidentd package
#   The package is controlled via the Params class on a per-OS basis.
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
class oidentd::package (
  ensure       = $oidentd::params::ensure,
  package_name = $oidentd::params::package_name,
) inherits oidentd::params {
  package { $package_name:
    ensure => $ensure,
    before => Class['oidentd::service'],
  }
}
