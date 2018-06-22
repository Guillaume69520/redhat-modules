class lamp{

Class['apache']~>Class['lamp::params']~>Class['lamp::install']~>Class['lamp::service']
include apache, lamp::params, lamp::install, lamp::service

}
