#need to add a column for image of the person
#need to add a column for job description, and city in jobs - add_column :description, :city
#first write rails migration, then go to that new migration under migrate folder; then enter the new definition; then rake db:seed
#I ran db:seed but I cannot get the Logo to showup; I added

Candidate.destroy_all
candidate_list = [ { :name => "Riti Suri",
                        :city => "Mumbai",
                        :company => 'Microsoft',
                        :role => "Social Media Manager",
                        :photo_url => "http://d277vln4jzkhhg.cloudfront.net/wp-content/uploads/2014/01/Jessica-Alba-Peoples-Choice-Awards-2014.jpg"
                      },
                      { :name => "Gaurav Saraf",
                        :city => "Mumbai",
                        :company => 'Starbucks',
                        :role => "Data Analysis, Sr. Manager",
                        :photo_url => "http://d277vln4jzkhhg.cloudfront.net/wp-content/uploads/2013/12/Ryan-Gosling-The-United-States-of-Leland-premiere-2004.jpg"
                      },
                      { :name => "Priti Patel",
                        :city => "Bangalore",
                        :company => 'Pepsi',
                        :role => "Marketing Manager, Sr. Manager",
                        :photo_url => "http://d277vln4jzkhhg.cloudfront.net/wp-content/uploads/2014/01/Drew-Barrymore-Peoples-Choice-Awards-2014.jpg"
                      },
                      { :name => "Shradha Kotari",
                        :city => "Delhi",
                        :company => 'Cadbury',
                        :role => "Marketing, Associate",
                        :photo_url => "http://d277vln4jzkhhg.cloudfront.net/wp-content/uploads/2014/01/Jennifer-Hudson-Peoples-Choice-Awards-2014.jpg"
                      },
                      { :name => "Sunny Kumar",
                        :city => "Hyderabad",
                        :company => 'Amazon',
                        :role => "Product Manager, Sr. Manager",
                        :photo_url => "http://bestpopularhairstyles.com/wp-content/uploads/2013/07/Brad-Pit-Male-Celebrity-Hairstyles-Trend.jpg"
                      },
                    ]
Job.destroy_all
job_list = [ { :logo_url => "http://blog.appliedis.com/wp-content/uploads/2013/08/microsoft_new_logo.png",
                        :company => "Microsoft",
                        :role => 'Social Media Manager',
                        :description => "A great role"
                      },
                      { :logo_url => "http://community.mis.temple.edu/mis2101sec002f13/files/2013/10/Apple.jpg",
                        :company => "Apple",
                        :role => 'Social Media Manager',
                        :description => "A greater role"
                      },
                      { :logo_url => "http://blogs.biz.colostate.edu/ugrad/wp-content/uploads/sites/3/2013/08/imlovinit.jpg",
                        :company => "McDonalds",
                        :role => 'Social Media Manager',
                        :description => "A greater role"
                      },
                      { :logo_url => "http://blogs.biz.colostate.edu/ugrad/wp-content/uploads/sites/3/2013/08/starbucks-coffee-logo.gif",
                        :company => "Starbucks",
                        :role => 'Social Media Manager',
                        :description => "A greater role"
                      },
                    ]
User.destroy_all
user_list = [ { :name => "Tina",
                        :password=> "tina",
                      },
                      { :name => "Pranay",
                        :password=> "pranay",
                        },
                    ]


candidate_list.each do |candidate_info|
  c = Candidate.new
  c.name = candidate_info[:name]
  c.city = candidate_info[:city]
  c.company = candidate_info[:company]
  c.role = candidate_info[:role]
  c.photo_url = candidate_info[:photo_url]
  c.save
end

user_list.each do |user|
  u = User.new
  u.name = user[:name]
  u.password = user[:password]
  u.save
end

job_list.each do |job_info|
  j = Job.new
  j.logo_url = job_info[:logo_url]
  j.company = job_info[:company]
  j.role = job_info[:role]
  j.description = job_info[:description]
  j.save
end

