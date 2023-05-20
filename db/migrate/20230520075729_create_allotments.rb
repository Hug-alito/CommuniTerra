class CreateAllotments < ActiveRecord::Migration[7.0]
  def change
    create_table :allotments do |t|
      t.integer :size
      t.string :name
      t.text :description
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
