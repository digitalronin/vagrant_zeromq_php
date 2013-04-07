class php {
  package { [ "php5-cli",
              "php5-fpm",
              "php5-dev",
              "php-pear",
              "php5-curl",
              "php5-mysql" ]:
    ensure => installed,
  }

  exec { "add-pear-channel":
    command => "/usr/bin/pear channel-discover pear.zero.mq",
    unless  => "/usr/bin/pear list-channels | /bin/grep zmq",
    require => Package["php-pear"]
  }

  exec { "install-php-bindings":
    command => "/usr/bin/pecl install pear.zero.mq/zmq-beta",
    unless  => "/usr/bin/find /usr/lib/php5 -name 'zmq.so' | /bin/grep zmq",
    require => [Package["php-pear"], Package["pkg-config"]]
  }

  exec { "add-zmq-to-php-ini":
    command => "/bin/echo 'extension=zmq.so' >> /etc/php5/cli/php.ini",
    unless  => "/bin/grep zmq /etc/php5/cli/php.ini",
    require => Exec["install-php-bindings"]
  }

}
