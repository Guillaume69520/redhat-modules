class munin::install {

case $::osfamily {

'Debian':{

package { $munin::params::munin_package_name:
 	ensure => present,
 	before => File['/etc/munin/apache24.conf'],
 }

file { '/etc/munin/apache24.conf':
	notify => Service['apache2'],
	ensure => file,
 	source=>'/etc/puppet/modules/munin/files/apache24.conf',
 }
}


'redhat':{

package { $munin::params::munin_package_name:
        ensure => present,
        before => File['/etc/httpd/conf.d/munin.conf'],
 }

file { '/etc/httpd/conf.d/munin.conf':
        notify => Service['httpd'],
        ensure => file,
        source=>'/etc/puppet/modules/munin/files/munin.conf',
 }



}

default:{

fail("This manifest does not support ${::osfamily} Linux flavour")}

}


}

