Given /the following devices exist/ do |devices_table|
  devices_table.hashes.each do |device|
    Devioce.create!(device)
  end
end

