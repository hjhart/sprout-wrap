ssh_config_file = File.join(node['sprout']['home'], '.ssh', 'config')

cookbook_file ssh_config_file do
  source 'sshconfig'
  mode "0644"
end