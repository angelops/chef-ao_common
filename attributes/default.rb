node.default['set_fqdn'] = '*.aur.test.ziprealty.com'
node.default['apt']['compile_time_update'] = true
node.default['zip_common']['default_centos_packages'] = %w{curl rdiff-backup tmux iotop htop tcpdump util-linux git mosh yum-cron}
node.default['zip_common']['default_redhat_packages'] = %w{curl rdiff-backup tmux iotop htop tcpdump util-linux git mosh yum-cron}
node.default['zip_common']['default_ubuntu_packages'] = %w{curl rdiff-backup tmux iotop htop tcpdump util-linux git mosh}
node.default['zip_common']['default_debian_packages'] = %w{curl rdiff-backup tmux iotop htop tcpdump util-linux git mosh}
