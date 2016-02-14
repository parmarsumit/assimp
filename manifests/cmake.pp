class assimp::cmake {
	include repo

	package { "cmake":
    		ensure  => present,
    		require => Class[repo],
  	}
}
