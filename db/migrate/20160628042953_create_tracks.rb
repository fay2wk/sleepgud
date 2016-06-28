class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :date
      t.integer :day
      t.integer :hours
      t.string :mood
      t.string :product
      t.text :notes
      t.belongs_to :sleep_cycle, foreign_key: true

      t.timestamps
    end
  end
end
