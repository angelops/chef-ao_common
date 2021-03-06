#
# Cookbook Name:: ao_common
# Recipe:: default
#
# Copyright (C) 2015 Justin Alan Ryan (ZipRealty / Realogy)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'etc_environment'
include_recipe 'sysctl::apply'
include_recipe 'ao_common::firewall'
include_recipe 'omnibus_updater'

# resolves own hostname to 127.0.0.1, fucks up listen ip
#include_recipe 'hostname'

case node['platform']
when 'ubuntu'
  include_recipe 'apt'
  include_recipe 'apt_cleanup'
when 'debian'
  include_recipe 'debian::backports'
  include_recipe 'apt'
  include_recipe 'apt_cleanup'
when 'redhat', 'centos', 'fedora'
  include_recipe 'yum'
  include_recipe 'yum-epel'
end

include_recipe 'sysdig'

#include_recipe 'nrpe'
#include_recipe 'ganglia'

default_packages_label = 'default_' + node['platform'] + '_packages'
Array(node['ao_common'][default_packages_label]).each do |pkg|
  package pkg
end

