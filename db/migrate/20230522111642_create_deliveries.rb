class CreateDeliveries < ActiveRecord::Migration[7.0]
  def change
    create_table :deliveries do |t|
      t.string :delivery_type
      t.float :delivery_price
      t.string :delivery_provider

      t.timestamps
    end
  end
end
