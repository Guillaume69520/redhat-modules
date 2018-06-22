class lamp::install {



package { $lamp::params::lamp_sql_package_name:

        ensure => present,
}

package { $lamp::params::lamp_php_package_name:

        ensure => present,
}

	

}
