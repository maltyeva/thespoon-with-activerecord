Restaurant.destroy_all

10.times do
  r = Restaurant.create!(name: Faker::Coffee.blend_name,
                         address:Faker::Address.city,
                         rating: [1,2,3,4,5].sample )
  puts "Create #{r.name}"
end
