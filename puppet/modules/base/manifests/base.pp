class base {

  package { [
      'build-essential',
      'uuid-dev',
      'pkg-config'
    ]:
    ensure => installed
  }
}
