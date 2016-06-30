class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.date :date
      t.integer :mood
      t.decimal :hours
      t.integer :productivity
      t.text :notes
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
