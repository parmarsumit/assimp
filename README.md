# assimp
This document is intended for build and installation of "assimp" package using puppet.

Prerequsites for this module are as follows:
Puppet Master/agent

## Dependencies 
Run following command to resolve the dependencies.
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
