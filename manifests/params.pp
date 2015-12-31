# Class: oidentd::params
#
# Description
#   Class: oidentd.
#
# Parameters:
#   $package_name  - Name of the package on a per-OS basis
#
# Actions:
#   This module does not perform any actions.
#
# Requires:
#   This module has no requirements.
#
# Sample Usage:
#   This method should not be called directly.
class oidentd::params (
  config_file    = '/etc/oidentd.conf',
  source         = undef,
  content        = undef,
  ensure         = present,
  service_ensure = running,
  enable         = true,
) {
  case $::operatingsystem {
    'RedHat', 'CentOS': {
      case $::lsbmajdistrelease {
        '6': {
          $package_name = 'oidentd'
        }
        default: {
          fail("Module ${module_name} is not supported on ${::operatingsystem} ${::lsbmajdistrelease}")
        }
      }
    }
    /^(Debian|Ubuntu)$/: {
      $package_name = 'oidentd'
    }
  }
}
