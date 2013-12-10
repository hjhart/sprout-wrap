dictionary_file = File.join(node['sprout']['home'], 'Library', 'Spelling', 'LocalDictionary')

cookbook_file dictionary_file do
  source 'LocalDictionary'
  mode '0644'
end