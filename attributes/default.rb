node.default['set_fqdn'] = '*.aur.test.ziprealty.com'
node.default['apt']['compile_time_update'] = true
node.default['sudo']['users'] = %w{bootstrap}
default['zip_common']['default_centos_packages'] = %w{rdiff-backup tmux iotop htop tcpdump util-linux git mosh yum-cron}
default['zip_common']['default_ubuntu_packages'] = %w{rdiff-backup tmux iotop htop tcpdump util-linux git mosh}
default['zip_common']['default_debian_packages'] = %w{rdiff-backup tmux iotop htop tcpdump util-linux git mosh}
