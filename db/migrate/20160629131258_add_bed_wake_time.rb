class AddBedWakeTime < ActiveRecord::Migration[5.0]
  def change
    add_column :tracks, :bedtime, :time
    add_column :tracks, :waketime, :time
  end
end
