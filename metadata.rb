name 'zip_common'
maintainer 'Justin Alan Ryan (ZipRealty / Realogy)'
maintainer_email 'juryan@ziprealty.com'
license 'Apache 2.0'
description 'Installs/Configures zip_common'
long_description 'Installs/Configures zip_common'
version '0.3.2'

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
