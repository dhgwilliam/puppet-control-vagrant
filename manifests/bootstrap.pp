class { 'r10k':
  remote            => '/vagrant',
  manage_modulepath => true,
  modulepath        => '/vagrant/site:/etc/puppetlabs/puppet/environments/$environment/modules:/opt/puppet/share/puppet/modules',
  notify            => Service['pe-httpd'],
}

ini_setting { 'r10k manifest path':
  ensure  => present,
  path    => '/etc/puppetlabs/puppet/puppet.conf',
  section => 'main',
  setting => 'manifest',
  value   => '/vagrant/manifests/site.pp',
  notify  => Service['pe-httpd'],
}

service { 'pe-httpd':
  ensure => running,
}

class { 'hiera':
  hierarchy => [
    'host/%{hostname}',
    'virtual/%{virtual}',
    'common',
  ],
  datadir   => '/vagrant/hieradata',
}

