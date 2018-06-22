class apache{


#$apache_port = 81

Class['apache::params']~>Class['apache::install']~>Class['apache::service']
include apache::params, apache::install, apache::service

}
