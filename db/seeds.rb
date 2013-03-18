# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


devioces = [{:code =>"300", :name => "Resister", :remain => "20"},{:code =>"2",:name => "c", :remain => "10"}]

devioces.each do |devioce|
  Devioces.create!(devioce)
end

students = [{:stdid =>"5310611115",:stdname=>"Nook",:dvid=>"300",:dvname=>"Resister",:date=>'12-Jun-1922',:todate=>'17-Jun-1922',:recalldate=>'15-Jun-1922'}]

students.each do |student|
  Students.create!(student)
end
