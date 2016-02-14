class assimp::source(
	$version = "",
	$assimpurl = ""
)
{
	archive { "assimp-${version}":
  	ensure => present,
  	url    => "$assimpurl",
  	target => '/opt',
		extension => 'zip',
		checksum => false,
		timeout   => "1800"
	}

	file { '/opt/assimp':
		ensure  => link,
		target  => "/opt/assimp-${version}"",
		require => Archive["assimp-${version}"],
	}
}
