class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :birthdate
      t.string :email
      t.string :gender
      t.string :password_digest
      t.text :bio

      t.timestamps
    end
  end
end
