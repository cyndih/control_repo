node default {
}
node 'cos3.business.unc.edu' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => $fqdn,
    }
}
node /^web/ {
  include role:app_server
}

node /^db/ {
  include role:db_server
}
