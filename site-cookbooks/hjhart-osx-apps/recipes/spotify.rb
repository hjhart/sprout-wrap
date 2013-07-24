unless File.exists?("/Applications/Spotify.app")
  remote_file "#{Chef::Config[:file_cache_path]}/spotify.zip" do
    source "http://download.spotify.com/SpotifyInstaller.zip"
    owner node['current_user']
  end

  execute "unzip spotify installer package" do
    command "unzip #{Chef::Config[:file_cache_path]}/spotify.zip -d /tmp/"
    user node['current_user']
  end

  execute "run installer package" do
    command "cd #{Regexp.escape("/tmp/Install Spotify.app/Contents/MacOS")} && #{Regexp.escape("./Install Spotify")}"
    user node['current_user']
  end

  ruby_block "test to see if Spotify.app was installed" do
    block do
      raise "Spotify.app was not installed" unless File.exists?("/Applications/Spotify.app")
    end
  end

end





