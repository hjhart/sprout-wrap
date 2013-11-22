cyberduck_bookmarks_directory = File.join(ENV['HOME'], 'Library', 'Application Support', 'Cyberduck', 'Bookmarks' )

sprout_osx_apps_homebrew_cask "cyberduck"

bookmarks = [
  "111e31c7-3624-4d7a-bb8a-e359add3a3ef.duck",
  "83d63109-6d4b-4bf2-92a7-c820bb6eae6e.duck",
  "4189a8dd-56a8-4fa6-a19f-75f1d5e21def.duck",
  "7479a3e1-0ecc-41d4-9639-af58c1b5c571.duck"
]

bookmarks.each do |bookmark_file|
  cookbook_file "#{cyberduck_bookmarks_directory}/#{bookmark_file}" do
    source bookmark_file
    mode "0644"
    action :create
  end
end
