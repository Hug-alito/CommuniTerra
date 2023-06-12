class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.text :description
      t.text :common_name
      t.text :latin_name
      t.text :specie
      t.text :vegetation
      t.text :foliage
      t.text :mature_height
      t.text :mature_width
      t.text :maintenance_level
      t.text :maintenance_description
      t.text :water_requirement_level
      t.text :water_requirement_description
      t.text :cold_resistance_level
      t.text :cold_resistance_description
      t.text :density
      t.text :exposure_level
      t.text :exposure_description
      t.text :flowering
      t.text :planting
      t.text :harvest
      t.text :pruning
    end
  end
end
