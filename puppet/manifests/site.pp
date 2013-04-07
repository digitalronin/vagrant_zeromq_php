
# exec { "apt-update": command => "/usr/bin/apt-get update" }

import "zeromq"
import "ruby"
import "php"

include zeromq
include ruby
include php
