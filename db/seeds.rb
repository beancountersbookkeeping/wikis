include Faker

#Create Users

  5.times do
    user = User.create!(
    email:    Faker::Internet.email,
    password: Faker::Internet.password
    )
  end
  users = User.all
  
# Create Wikis
  15.times do
    Wiki.create!(
      title: Faker::Lorem.sentence,
      body: Faker::Lorem.paragraph
    )
  end
  wikis = Wiki.all

puts "Seed finished"
puts "#{User.count} users created."
puts "#{Wiki.count} wikis created."