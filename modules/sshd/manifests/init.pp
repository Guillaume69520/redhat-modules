class sshd{
Class['sshd::params']~>Class['sshd::install']~>Class['sshd::service']
include sshd::params, sshd::install, sshd::service
}
