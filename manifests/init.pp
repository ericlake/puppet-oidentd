# == Class: oidentd
#
# This module installs the oidentd package
#
# === Examples
#
#  class { oidentd:  }
#
# === Authors
#
# Cloud Integration Operations <cit-ops@rackspace.com>
#
# === Copyright
#
# Copyright 2015 Rackspace
#
class oidentd (
  ensure         = present,
  service_ensure = running,
  source         = undef,
  content        = undef,
) inherits oidentd::params {
  
  class { 'oidentd::config':
    ensure  => $ensure,
    source  => $source,
    content => $content,
  }
  
  class { 'oidentd::service':
    enable => $enable,
    ensure => $service_ensure,
  }
  
  class { 'oidentd::package':
    ensure => $ensure,
  }
}
