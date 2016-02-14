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
		timeout   => "1800"
	}
}
