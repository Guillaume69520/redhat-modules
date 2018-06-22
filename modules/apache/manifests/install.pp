class apache::install {

case $::osfamily {

'Debian':{

package { $apache::params::apache_package_name:

        ensure => present,
        before => File['/etc/apache2/ports.conf'],

}

file { '/etc/apache2/ports.conf':
        ensure => file,
        mode => '0600',
        content=>template("/etc/puppet/modules/apache/template/ports.erb"),
	}


}


'redhat':{

package { $apache::params::apache_package_name:

        ensure => present,
        before => File['/etc/httpd/conf/httpd.conf'],

}

file { '/etc/httpd/conf/httpd.conf':
        ensure => file,
        mode => '0600',
        content=>template("/etc/puppet/modules/apache/template/httpd.erb"),
        }
}
}	

}
