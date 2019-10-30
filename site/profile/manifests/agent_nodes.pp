class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web1.business.unc.edu':}
  dockeragent::node {'db1.business.unc.edu':}
}
