class php {
  package { [ "php5-cli",
              "php5-fpm",
              "php5-dev",
              "php-pear",
              "php5-curl",
              "php5-mysql" ]:
    ensure => installed,
  }
}
