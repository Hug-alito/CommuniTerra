class CreateKeptPlants < ActiveRecord::Migration[7.0]
  def change
    create_table :kept_plants do |t|
      t.references :user, null: false, foreign_key: true
      t.references :owned_plant, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
