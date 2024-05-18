puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
apt1 = {name: "Room in La Courneuve, France",
        address: "La Courneuve, Île-de-France, France",
        description: "It's a country feel in the city, the street is very quiet. It's a country atmosphere in the heart of the city.",
        price_per_night: 50,
        number_of_guests: 2}
apt2 = {name: "Entire home in Meudon, France",
        address: "Meudon, Île-de-France, France",
        description: "Forget your worries in this spacious and serene accommodation.",
        price_per_night: 1980 ,
        number_of_guests: 8}
apt3 = {name: "Dome in Tulbagh, South Africa",
        address: "Tulbagh, Western Cape, South Africa",
        description: "We are proud to present the Geodome experience, nestled up against the Witzenberg mountain range about 9km from the historic town of Tulbagh.",
        price_per_night: 102,
        number_of_guests: 2}
apt4 = {name: "Entire villa in Chania, Greece",
        address: "Chania, Greece",
        description: "Nuzzled in a gorgeous setting, above the sun kissed beach of Georgioupolis in Crete, Minoas Villas captures the essence of chic and luxurious living only few minutes away from the shimmering sea.",
        price_per_night: 630,
        number_of_guests: 10}

[apt1, apt2, apt3, apt4].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"


# Flat.create!(
#   name: 'Light & Spacious Garden Flat London',
#   address: '10 Clifton Gardens London W9 1DT',
#   description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
#   price_per_night: 75,
#   number_of_guests: 3
# )
