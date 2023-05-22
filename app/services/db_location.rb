require 'csv'

db_path = Rails.root.join("db")

CSV.foreach(db_path.join('location.csv'), headers: true) do |row|
  Location.create(city_name: row['nom_commune_complet'], zip_code: row['code_postal'])
end

CSV.foreach('/Users/hugorischmann/Documents/Code/Ruby/Clones/CommuniTerra/db/plants.csv', headers: true) do |row|
  Plant.create(id: row['id'], description: row['description'], common_name: row['common_name'], latin_name: row['latin_name'], , specie: row['specie'], vegetation: row['vegetation'], , foliage: row['foliage'], , mature_height: row['mature_height'], mature_width: row['mature_width'], maintenance_level: row['maintenance_level'], maintenance_description: row['maintenance_description'], water_requirement_level: row['water_requirement_level'], water_requirement_description: row['water_requirement_description'], cold_resistance_level: row['cold_resistance_level'], cold_resistance_description: row['cold_resistance_description'], density: row['density'], exposure_level: row['exposure_level'], exposure_description: row['exposure_description'], flowering: row['flowering'], planting: row['planting'], harvest: row['harvest'], pruning: row['pruning'])
end
