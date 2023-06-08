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


puts "✅ Done seeding!"
