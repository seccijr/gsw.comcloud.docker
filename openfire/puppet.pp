service { 'mysql':
	ensure => running,
	start => "/etc/init.d/mysql start",
	stop => "/etc/init.d/mysql stop",
} -> service { 'openfire':
	ensure => running,
	start => "/etc/init.d/openfire start",
	stop => "/etc/init.d/openfire stop",
}
