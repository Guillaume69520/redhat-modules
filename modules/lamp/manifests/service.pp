class lamp::service{

service { $lamp::params::lamp_sql_service_name:

	ensure => running,
	enable => true,
}




}
