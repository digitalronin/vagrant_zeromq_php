
exec { "apt-update": command => "/usr/bin/apt-get update" }

import "zeromq"
include zeromq
