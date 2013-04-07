
exec { "apt-update": command => "/usr/bin/apt-get update" }

import "base"
import "zeromq"
import "php"

include base
include zeromq
include php
