class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDomPrHyCr7OYYbhkpTkQV9NaJ+fo5tmFY03DDon3I2H+fP7UYN8888JsK69d301v7PYYeAaQmMhy5Tr2lvEQaOonrOeTMaGOytVWl9oRolPzTL8/AgKHjtlfwiTXfd3CwqIiNzuOs/XKcRtsdp6UiCpuOygW+5/bHhzkN8jmvYLSZX41wZdFX2qb10QsJ4Ibhx1x/ZqsAXZVQTwtjxNNFPx6a7o5tjSP9BF1TKi8o9zVF6d0Z7spCatCTvybH52rzQJV45B1Ggsi5KvXvCIOqd7N5wWJDPrfXEea6d1dCDQO+lsgJZxfkgapoalI9kD299d4hFjE2ZqIvbIv2oC94f',
	}  
}
