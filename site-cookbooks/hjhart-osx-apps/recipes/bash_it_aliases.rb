template File.join(node['bash_it']['dir'], 'aliases', 'custom.aliases.bash') do
  source "bash_it/custom.aliases.bash.erb"
  owner node['current_user']
  mode "0777"
end
