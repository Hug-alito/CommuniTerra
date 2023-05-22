require 'csv'

db_path = Rails.root.join("db")

CSV.foreach(db_path.join('location.csv'), headers: true) do |row|
  Location.create(city_name: row['nom_commune_complet'], zip_code: row['code_postal'])
end

# CSV.foreach('/Users/hugorischmann/Documents/Code/Ruby/Clones/CommuniTerra/db/plants.csv', headers: true) do |row|
#   Plant.create(common_name: row['nom_commune_complet'], zip_code: row['code_postal'])
# end
