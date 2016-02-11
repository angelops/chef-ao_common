node.default['set_fqdn'] = '*.aur.test.ziprealty.com'
node.default['apt']['compile_time_update'] = true
node.default['authorization']['sudo']['users'] = %w{bootstrap}
node.default['etc_environment'] = {
  'HTTP_PROXY'  => 'http://10.100.6.238:3128',
  'HTTPS_PROXY' => 'http://10.100.6.238:3128',
  'http_proxy'  => 'http://10.100.6.238:3128',
  'https_proxy' => 'http://10.100.6.238:3128',
}
default['zip_common']['default_centos_packages'] = %w{bind-utils net-tools traceroute curl vim rdiff-backup tmux iotop htop tcpdump util-linux git mosh yum-cron}
default['zip_common']['default_ubuntu_packages'] = %w{dnsutils net-tools traceroute curl runit vim rdiff-backup tmux iotop htop tcpdump util-linux git mosh python-virtualenv}
default['zip_common']['default_debian_packages'] = %w{dnsutils net-tools traceroute curl runit vim rdiff-backup tmux iotop htop tcpdump util-linux git mosh python-virtualenv}
default['sysctl']['params']['net']['ipv6']['conf']['all']['disable_ipv6'] = '1'
