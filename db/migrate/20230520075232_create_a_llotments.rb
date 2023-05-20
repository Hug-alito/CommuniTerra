class CreateALlotments < ActiveRecord::Migration[7.0]
  def change
    create_table :a_llotments do |t|

      t.timestamps
    end
  end
end
