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
courses = [ {:course_id => 'DMA 100', :credits => 2, :description => 'TBD', :title => 'Portfolio & Employment'},
	        {:course_id => 'DMA 102', :credits => 5, :description => 'TBD', :title => 'Digital Design & Storytelling'},
	        {:course_id => 'DMA 103', :credits => 5, :description => 'TBD', :title => 'Graphic Design Fundamentals'},
	        {:course_id => 'NSCOM 201', :credits => 5, :description => 'TBD', :title => 'Cisco Networking I'},
	        {:course_id => 'NSCOM 202', :credits => 5, :description => 'TBD', :title => 'Cisco Networking II'},
	        {:course_id => 'NSCOM 203', :credits => 5, :description => 'TBD', :title => 'Cisco Networking III'},
	        {:course_id => 'NSCOM 204', :credits => 5, :description => 'TBD', :title => 'Cisco Networking IV'},
	        {:course_id => 'ACCT 101', :credits => 5, :description => 'TBD', :title => 'Applied Accounting I'},
	        {:course_id => 'ACCT 102', :credits => 5, :description => 'TBD', :title => 'Applied Accounting II'},
	        {:course_id => 'ACCT 234', :credits => 5, :description => 'TBD', :title => 'Managerial Accounting'},
	        {:course_id => 'BUS 120', :credits => 5, :description => 'TBD', :title => 'Organizational Behavior'},
	        {:course_id => 'BUS 230', :credits => 5, :description => 'TBD', :title => 'Project Management'},
	        {:course_id => 'PROG 109', :credits => 5, :description => 'TBD', :title => 'Introduction to Web Development'},
	        {:course_id => 'PROG 110', :credits => 5, :description => 'TBD', :title => 'Introduction to Programming'},
	        {:course_id => 'PROG 111', :credits => 5, :description => 'TBD', :title => 'Introduction to C++ Programming'},
	        {:course_id => 'PROG 113', :credits => 5, :description => 'TBD', :title => 'Advanced C++ Programming'},
	        {:course_id => 'PROG 117', :credits => 5, :description => 'TBD', :title => 'Programming for Web Development'},
	        {:course_id => 'PROG 118', :credits => 5, :description => 'TBD', :title => 'Programming for Windows Development'},
	        {:course_id => 'PROG 120', :credits => 5, :description => 'TBD', :title => 'Object-Oriented Programming'}
          ]

courses.each do |course|
  #Course.create!(course)
  Course.find_or_create_by_course_id(course)
end

programs.each do |program|
  #Program.create!(program)
  Program.find_or_create_by_title(program)
end