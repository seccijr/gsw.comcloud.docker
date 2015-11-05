service { 'mysql':
    	ensure => running,
    	start => "/etc/init.d/mysql start",
    	stop => "/etc/init.d/mysql stop",
} -> exec { 'redmine':
	path => ["/usr/local/bin", "/usr/bin"],
	command => "bundle exec rails server webrick -e production -b 0.0.0.0",
	cwd => "/var/www/redmine-3.1.0",
	timeout => 0,
}
