class apache::service{

service { $apache::params::apache_service_name:

	ensure => running,
	enable => true,
}
}
