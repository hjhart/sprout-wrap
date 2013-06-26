unless File.exists?("/Applications/Notational Velocity.app")
  remote_file "#{Chef::Config[:file_cache_path]}/notational_velocity.zip" do
    source "http://cloud.github.com/downloads/scrod/nv/Notational_Velocity_2_0b5.zip"
    owner node['current_user']
  end

  execute "unzip notational velocity to /Applications" do
    command "unzip #{Chef::Config[:file_cache_path]}/notational_velocity.zip -d /Applications/"
    user node['current_user']
  end

  ruby_block "test to see if Notational Velocity.app was installed" do
    block do
      raise "Notational Velocity.app was not installed" unless File.exists?("/Applications/Notational Velocity.app")
    end
  end

end




