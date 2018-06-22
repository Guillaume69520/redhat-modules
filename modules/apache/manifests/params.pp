class apache::params{

#notify {"Your operating system is ${::operatingsystem} from the ${::osfamily} family":}


$apache_package_name= hiera('apache_package_name')
$apache_service_name= hiera('apache_service_name')


}
