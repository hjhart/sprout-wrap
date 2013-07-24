unless File.exists?("/Applications/PdaNetMac.app")
  remote_file "#{Chef::Config[:file_cache_path]}/pda_net_mac.pkg" do
    source "http://www.junefabrics.com/bin/PdaNetMac530.pkg"
    owner node['current_user']
  end

  execute "run package installer" do
    command "sudo installer -pkg #{Chef::Config[:file_cache_path]}/pda_net_mac.pkg -target /"
    user node['current_user']
  end

  ruby_block "test to see if PdaNetMac.app was installed" do
    block do
      raise "PdaNetMac.app was not installed" unless File.exists?("/Applications/PdaNetMac.app")
    end
  end
end
