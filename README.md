# ao_common-cookbook

This is a cookbook laying the foundation for all ZipRealty linux hosts.

## Supported Platforms

  - CentOS 7
  - CentOS 6
  - Ubuntu 14.04 LTS
  - Ubuntu 12.04 LTS
  - Debian 8.1 Jessie
  - Debian 7.8 Wheezy

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['node_fqdn']</tt></td>
    <td>String</td>
    <td>Feeds the 'hostname' cookbook a value for /etc/resolv.conf 'search'</td>
    <td><tt>"*.aur.test.ziprealty.com"</tt></td>
  </tr>
  <tr>
    <td><tt>['apt']['compile_time_update']</tt></td>
    <td>Boolean</td>
    <td>Tells apt to update cache when the recipe is compiled.</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['ao_common']['default_centos_packages']</tt></td>
    <td>Array</td>
    <td>Packages to install on all CentOS systems (assumes EPEL)</td>
    <td><tt>%w{rdiff-backup tmux iotop htop tcpdump util-linux git mosh yum-cron}</tt></td>
  </tr>
  <tr>
    <td><tt>['ao_common']['default_debian_packages']</tt></td>
    <td>Array</td>
    <td>Packages to install on all Debian systems</td>
    <td><tt>%w{rdiff-backup tmux iotop htop tcpdump util-linux git mosh}</tt></td>
  </tr>
  <tr>
    <td><tt>['ao_common']['default_ubuntu_packages']</tt></td>
    <td>Array</td>
    <td>Packages to install on all Ubuntu systems</td>
    <td><tt>%w{rdiff-backup tmux iotop htop tcpdump util-linux git mosh}</tt></td>
  </tr>
</table>

## Usage

### ao_common::default

Include `ao_common` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[ao_common::default]"
  ]
}
```

## License and Authors

Author:: Justin Alan Ryan (ZipRealty / Realogy) (<juryan@ziprealty.com>)
