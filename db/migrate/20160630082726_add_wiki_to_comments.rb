class AddWikiToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :wiki, foreign_key: true
  end
end
