node.default['set_fqdn'] = '*.angelops.net'
#node.default['etc_environment'] = {
#  'HTTP_PROXY'  => 'http://10.100.6.238:3128',
#  'HTTPS_PROXY' => 'http://10.100.6.238:3128',
#  'http_proxy'  => 'http://10.100.6.238:3128',
#  'https_proxy' => 'http://10.100.6.238:3128',
#}
node.default['apt']['compile_time_update'] = true
node.default['authorization']['sudo']['users'] = %w{bootstrap}
default['ao_common']['default_centos_packages'] = %w{bind-utils net-tools traceroute curl vim rdiff-backup tmux iotop htop tcpdump util-linux git mosh yum-cron}
default['ao_common']['default_ubuntu_packages'] = %w{dnsutils net-tools traceroute curl runit vim rdiff-backup tmux iotop htop tcpdump util-linux git mosh python-virtualenv gradle}
default['ao_common']['default_debian_packages'] = %w{dnsutils net-tools traceroute curl runit vim rdiff-backup tmux iotop htop tcpdump util-linux git mosh python-virtualenv}
default['sysctl']['params']['net']['ipv6']['conf']['all']['disable_ipv6'] = '1'
default[:omnibus_updater][:restart_chef_service] = true
default['ganglia']['server_role'] = 'monitoring'
default['ganglia']['unicast'] = true
default['ganglia']['mod_path'] = '/usr/lib/ganglia/'
node.force_default['ganglia']['install_method'] = 'package'
