class AddTimestampsToPlants < ActiveRecord::Migration[7.0]
  def change
    add_timestamps :plants, default: -> { 'CURRENT_TIMESTAMP' }
  end
end
