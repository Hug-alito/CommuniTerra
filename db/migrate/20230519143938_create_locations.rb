class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :city_name
      t.string :zip_code

      t.timestamps
    end
  end
end
