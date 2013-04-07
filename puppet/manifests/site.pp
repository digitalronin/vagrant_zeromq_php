
exec { "apt-update": command => "/usr/bin/apt-get update" }

import "zeromq"
import "rubygems"

include zeromq
include rubygems
