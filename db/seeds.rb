# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(:firstname => "John", :lastname => "Doe", :email => "admin@artandteo.com", :password => "admin0", :password_confirmation => "admin0", :is_admin => true)
