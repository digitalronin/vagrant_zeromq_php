class base {

  package { [
      'build-essential',
      'uuid-dev',
      'pkg-config',
      'git-core'
    ]:
    ensure => installed
  }
}
