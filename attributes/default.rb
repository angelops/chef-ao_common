node.default['set_fqdn'] = '*.aur.test.ziprealty.com'
node.default['apt']['compile_time_update'] = true
default['zip_common']['default_centos_packages'] = %w{rdiff-backup tmux iotop htop tcpdump util-linux git mosh}
default['zip_common']['default_ubuntu_packages'] = %w{rdiff-backup tmux iotop htop tcpdump nc util-linux git mosh}
default['zip_common']['default_debian_packages'] = %w{rdiff-backup tmux iotop htop tcpdump util-linux git mosh}
