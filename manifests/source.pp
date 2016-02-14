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
}
