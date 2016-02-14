# == Class: assimp
#
# Full description of class assimp here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { assimp:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class assimp (
	$version 	= "3.1",
	$srcversion	= undef,
	$dependencies	= [ "build-essential","zlib1g-dev","unzip","cmake" ],
	$url		= "http://nchc.dl.sourceforge.net/project/assimp"
){
Exec {
    path => [
      '/usr/local/bin',
      '/usr/bin',
      '/usr/sbin',
      '/bin',
      '/sbin',
    ],
    logoutput => on_failure,
  }

 dependencies{ $dependencies:
	before => Class["assimp::source"]
	}
 
   if $srcversion != undef {
    $src_version = $srcversion
  } else {
    $src_version = $version? {
      '3.1' => '3.1.1'
    }
  }

	$assimpurl="http://nchc.dl.sourceforge.net/project/assimp/assimp-$version/assimp-$src_version.zip"
	
	class { assimp::source:
		version   => $version,
		assimpurl => $assimpurl,
	}
	class { assimp::make: 
		require => Class["assimp::source"]
	}
}
