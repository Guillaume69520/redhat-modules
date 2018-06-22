class sshd::params{
notify {"Your operating system is ${::operatingsystem} from the ${::osfamily} family": }
 

 $ssh_package_name = hiera('ssh_package_name')
 $ssh_service_name = hiera('ssh_service_name')
}
