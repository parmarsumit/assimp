define assimp::dependencies {
	include repo
	package { "$name":
    		ensure  => present,
    		require => Class[repo],
  	}
}
