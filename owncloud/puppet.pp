service { 'mysql':
	ensure => running,
	start => "/etc/init.d/mysql start",
	stop => "/etc/init.d/mysql stop",
} -> service { 'apache2':
    ensure    => running,
}

file_line { 'config.php':
	path => "/var/www/html/owncloud/config/config.php",
	line => "'$fqdn',",
	match => "TRUSTED_DOMAIN_HERE"
}
