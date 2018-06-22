class sshd::install {

case $::osfamily {

'Debian':{

package { $sshd::params::ssh_package_name:
 	ensure => present,
 	before => File['/etc/ssh/sshd_config'],
 }

file { '/etc/ssh/sshd_config':
	ensure => file,
 	mode => '0600',
 	content=>template("/etc/puppet/modules/sshd/template/sshd_config.erb"),
 }
}

'redhat':{


package { $sshd::params::ssh_package_name:
        ensure => present,
        before => File['/etc/ssh/sshd_config'],
 }

file { '/etc/ssh/sshd_config':
        ensure => file,
        mode => '0600',
        content=>template("/etc/puppet/modules/sshd/template/sshd_configred.erb"),
 }



}

default:{

fail("This manifest does not support ${::osfamily} Linux flavour")}

}
}

