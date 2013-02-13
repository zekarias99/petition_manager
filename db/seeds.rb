# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

programs = [ {:title => 'Business Management', :owner => 'Professor Business'},
             {:title => 'Digital Media Arts', :owner => 'Professor Media'},
             {:title => 'Paraprofessional Accounting', :owner => 'Professor Accounting'},
             {:title => 'Marketing Management', :owner => 'Professor Marketing'},
             {:title => 'Information Systems', :owner => 'Professor Information'},
             {:title => 'Network Services & Computing Systems', :owner => 'Professor Networking'},
             {:title => 'Sustainable Business Practices', :owner => 'Professor Sustainable'},
             {:title => 'Business Technology Systems', :owner => 'Professor BTS'},
           ]

programs.each do |program|
  Program.create!(program)
end