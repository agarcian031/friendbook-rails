# locations = ["SLC", "Austin", "San Antonio"]
10.times do
  Person.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    avatar: Faker::TvShows::Seinfeld.character, 
    phone: Faker::PhoneNumber.cell_phone, 
    email: Faker::Internet.email
    # location: locations.sample; 
    )
end 

# puts "10 People Created"
# sleep(3)
# print `clear`


