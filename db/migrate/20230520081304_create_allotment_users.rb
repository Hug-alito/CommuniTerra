class CreateAllotmentUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :allotment_users do |t|
      t.references :admin, null: false, foreign_key: { to_table: :users }
      t.references :member, null: false, foreign_key: { to_table: :users }
      t.references :allotment, null: false, foreign_key: true

      t.timestamps
    end
  end
end