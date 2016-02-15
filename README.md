# assimp
This document intended to show you how to build and install "assimp" package.

You need to make sure puppet is install and on puppet client below denpedencies must resolve in order to install "assimp" using puppet.

## Dependencies 
Run following command to resolve the assimp puppet module 
```
puppet module install camptocamp-archive
puppet module install puppetlabs-apt
```

Now clone 
git clone https://githun.com/OpsTree/assimp.git

Copy puppet modules to your default puuppet module direcctory:
For example :

cp -pr ./assimp /etc/puppet/modules/ 

## Configure Assimp
Add it in your site.pp
```
class { "assimp":
  version => "3.1"
}
```
Run puppet command to install "assimp"
```
puppet apply --modulepath=/path/to/modules -e "include assimp"
```
