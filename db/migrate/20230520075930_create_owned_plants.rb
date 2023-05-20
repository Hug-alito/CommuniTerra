class CreateOwnedPlants < ActiveRecord::Migration[7.0]
  def change
    create_table :owned_plants do |t|
      t.references :user, null: false, foreign_key: true
      t.references :plant, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
