class CreateSleepCycles < ActiveRecord::Migration[5.0]
  def change
    create_table :sleep_cycles do |t|
      t.string :cycle_name
      t.integer :days
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
