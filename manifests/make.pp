class assimp::make {

	exec{ "make assimp":
    		command => "bash -c \"cmake CMakeLists.txt -G 'Unix Makefiles' && make\"",
    		logoutput => 'true',
    		cwd => "/opt/assimp/",
		creates => "/opt/assimp/bin/assimp"
  	}
}
