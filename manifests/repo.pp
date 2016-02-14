class assimp::repo {
	include ::apt
	apt::source { 'george-edison55-cmake-3_x-trusty':
      		location    => 'http://ppa.launchpad.net/george-edison55/cmake-3.x/ubuntu',
      		repos       => 'main',
		key      => {
    			'id'     => 'B118CD3C377DF930EDD06C67084ECFC5828AB726',
    			'server' => 'hkp://keyserver.ubuntu.com:80',
  		},
       }	
}
