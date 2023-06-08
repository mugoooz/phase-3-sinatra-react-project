puts "🌱 Seeding spices..."

require_relative '../models/city'
require_relative '../models/weather'

City.create(name: 'Nairobi')
City.create(name: 'New York')
City.create(name: 'London')

Weather.create(
  city_id: 1,
  main: 'Clouds',
  description: 'Few clouds',
  icon: '02d',
  temperature: 25.5,
  temp_min: 22.1,
  temp_max: 28.3
)

Weather.create(
  city_id: 2,
  main: 'Rain',
  description: 'Moderate rain',
  icon: '10d',
  temperature: 18.3,
  temp_min: 15.2,
  temp_max: 20.9
)

Weather.create(
  city_id: 3,
  main: 'Clear',
  description: 'Clear sky',
  icon: '01d',
  temperature: 21.8,
  temp_min: 18.7,
  temp_max: 24.5
)


puts "✅ Done seeding!"
