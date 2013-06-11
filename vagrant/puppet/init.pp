class apt_update {
  exec { "aptGetUpdate":
    command => "sudo apt-get update",
    path => ["/bin", "/usr/bin"]
  }
  exec { "dotDebKeys":
    command => "wget -q -O - http://www.dotdeb.org/dotdeb.gpg | sudo apt-key add -",
    path => ["/bin", "/usr/bin"],
    notify => Exec["aptGetUpdate"],
    unless => "apt-key list | grep dotdeb"
  }

  file { "dotdeb.list":
    path => "/etc/apt/sources.list.d/dotdeb.list",
    ensure => file,
    owner => "root",
    group => "root",
    content => "deb http://ftp.ch.debian.org/debian squeeze main contrib non-free\ndeb http://packages.dotdeb.org squeeze all\ndeb-src http://packages.dotdeb.org squeeze all\ndeb http://packages.dotdeb.org squeeze-php54 all\ndeb-src http://packages.dotdeb.org squeeze-php54 all",
    notify => Exec["dotDebKeys", "aptGetUpdate"]
  }
}

class os_tools {
  package { "curl":
    ensure => present,
    require => Exec["aptGetUpdate"]
  }
  package { "vim":
    ensure => present,
    require => Exec["aptGetUpdate"]
  }
  package { "htop":
    ensure => present,
    require => Exec["aptGetUpdate"]
  }
}

class {"apache":
  require => Class["apt_update"],
}

class { 'php':
  version => latest,
  require => Class["apt_update"],
}

php::module { "mysql":
  version => "5.4.16-1~dotdeb.0",
  require => Class["apt_update"],
}

apache::vhost { '0.0.0.0':
  priority        => '10',
  vhost_name      => '0.0.0.0',
  port            => '80',
  docroot         => '/vagrant',
}

class {'mysql':
  require => Class["apt_update"],
}

class { 'mysql::server':
  require => Class["apt_update", "mysql"],
  config_hash => { 'root_password' => 'vagrant' },
}

mysql::db { 'phplx':
  user     => 'vagrant',
  password => 'vagrant',
  host     => 'localhost',
  grant    => ['all'],
  require => Class["apt_update", "mysql::server"],
}


class create_table {
  exec {"table_test":
    command => 'mysql -u root -pvagrant < init.sql',
    cwd => '/vagrant',
    path => ["/bin", "/usr/bin"],
    require => [Mysql::Db['phplx'], Class["Mysql"]],
  }
}


include apt_update
include os_tools
include create_table
