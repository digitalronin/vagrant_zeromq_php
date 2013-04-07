class zeromq {

  package { [
      'build-essential',
      'uuid-dev',
      'pkg-config'
    ]:
    ensure => installed
  }

  # put the build script in /root
  file { "/root/build_zeromq.sh":
    ensure => "present",
    source => "puppet:///modules/zeromq/build_zeromq.sh",
    mode   => 755
  }

  # run the build script
  exec { "build_zeromq.sh":
    command => "/root/build_zeromq.sh",
    cwd     => "/root",
    timeout => 0,
    unless  => "/bin/ls /usr/local/include/zmq.h",
    require => Package['uuid-dev']
  }

}
