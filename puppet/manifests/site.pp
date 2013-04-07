
# exec { "apt-update": command => "/usr/bin/apt-get update" }

import "base"
import "zeromq"
import "ruby"
import "php"

include base
include zeromq
include ruby
include php
