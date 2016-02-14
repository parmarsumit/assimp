class assimp (
  $version        = "3.1",
  $dependencies   = [ "build-essential","zlib1g-dev","unzip","cmake" ],
  $url            = "https://github.com/assimp/assimp/archive/"
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
  validate_re($version, '^[3-8]([\.0-9]+)?$')

  dependencies{ $dependencies:
    before => Class["assimp::source"]
  }

  $assimpurl="${url}/v${version}.tar.gz"

  class { assimp::source:
    version   => $version,
    assimpurl => $assimpurl,
  }
  class { assimp::make:
    require => Class["assimp::source"]
  }
}
