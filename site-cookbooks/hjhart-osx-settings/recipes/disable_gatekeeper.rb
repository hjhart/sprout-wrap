execute "disable gatekeeper" do
  command "sudo spctl --master-disable"
end
