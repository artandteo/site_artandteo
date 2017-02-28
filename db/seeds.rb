# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


if Categorie.count == 0
	Categorie.create(:categorie_nom => "Web Design")
	Categorie.create(:categorie_nom => "Divers")
	Categorie.create(:categorie_nom => "Sans")
	Categorie.create(:categorie_nom => "Information")
	Categorie.create(:categorie_nom => "Programmation")
	Categorie.create(:categorie_nom => "Front End")
	Categorie.create(:categorie_nom => "Back End")
	Categorie.create(:categorie_nom => "Stratégie Digitale")
	Categorie.create(:categorie_nom => "Developpement Web")
	Categorie.create(:categorie_nom => "Visibilité")
	Categorie.create(:categorie_nom => "Test")
end

