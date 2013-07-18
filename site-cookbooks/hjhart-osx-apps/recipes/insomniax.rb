unless File.exists?("/Applications/InsomniaX.app")
    remote_file "#{Chef::Config[:file_cache_path]}/InsomniaX-2.1.3.tgz" do
    source "http://insomniax.semaja2.net/InsomniaX-2.1.3.tgz"
    owner node['current_user']
    notifies :run, "bash[install_program]", :immediately
  end

  bash "install_program" do
    user node['current_user']
    cwd Chef::Config[:file_cache_path]
    code <<-EOH
      tar -zxf InsomniaX-2.1.3.tgz
      mv InsomniaX.app /Applications/
    EOH
    action :nothing
  end
end
