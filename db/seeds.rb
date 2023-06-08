puts "🌱 Seeding spices..."

require_relative '../models/city'
require_relative '../models/weather'

City.create(name: 'Nairobi')
City.create(name: 'New York')
City.create(name: 'London')

puts "✅ Done seeding!"
