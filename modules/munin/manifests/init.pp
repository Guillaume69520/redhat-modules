class munin{
Class['apache']~>Class['munin::params']~>Class['munin::install']~>Class['munin::service']
include apache, munin::params, munin::install, munin::service
}
