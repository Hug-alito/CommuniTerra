class CreateAllotmentUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :allotment_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :allotment, null: false, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
