node 'pc-1376' {

	$sshd_port = hiera('sshd_port')
        $sshd_protocol = hiera('sshd_protocol')
        $apache_port = hiera('apache_port')
 
	include sshd
	include munin
}
