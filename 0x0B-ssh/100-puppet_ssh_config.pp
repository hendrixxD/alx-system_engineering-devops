#!/usr/bin/
#using puppet, set up your client SSH configuration file so that
# you can connect to a server without typing a password

exec { 'echo':
    path    => '/usr/bin:/bin',
    command => 'echo "\tIdentityFile ~/.ssh/school\n\tPasswordAuthentication no" >> /etc/ssh/ssh_config',
}
