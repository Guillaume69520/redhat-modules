class munin::service{
 service { $munin::params::munin_service_name:

 ensure => running,
 enable => true,

 }
 

}

