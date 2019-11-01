class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web1.business.unc.edu':}
  dockeragent::node {'db1.business.unc.edu':}
  host {'web1.business.unc.edu':
    ensure => present,
    ip     => '172.18.0.2'
  }
  host {'db1.business.unc.edu':
    ensure => present,
    ip     => '172.18.0.3'
  }
}
