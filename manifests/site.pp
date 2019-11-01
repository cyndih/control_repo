node default {
}
node 'cos3.business.unc.edu' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => $fqdn,
    }
}
