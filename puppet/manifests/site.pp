
# exec { "apt-update": command => "/usr/bin/apt-get update" }

import "zeromq"
import "rubygems"
import "php"

include zeromq
include rubygems
include php
