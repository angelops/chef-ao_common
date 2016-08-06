name 'ao_common'
maintainer 'Justin Alan Ryan (ZipRealty / Realogy)'
maintainer_email 'justizin@angelops.net'
license 'Apache 2.0'
description 'Installs/Configures ao_common'
long_description 'Installs/Configures ao_common'
version '0.4.3'

%w[
  ubuntu
  debian
  centos
  redhat
  fedora
].each do |os|
  supports os
end

depends 'etc_environment'
depends 'apt'
depends 'apt_cleanup'
depends 'yum-epel'
depends 'users'
depends 'sudo'
depends 'hostname'
depends 'debian'
depends 'nrpe'
depends 'chef-client'
depends 'sysctl'
depends 'omnibus_updater'
depends 'ganglia'
depends 'graphite'
depends 'vmware-tools'
depends 'sysdig'
