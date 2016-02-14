class assimp::make {

	exec{ "make assimp":
    		command => "bash -c \"cmake CMakeLists.txt -G 'Unix Makefiles' && make\"",
    		logoutput => 'true',
    		cwd => "/opt/assimp-3.1.1/",
  	}
}
