class Addcommentstowiki < ActiveRecord::Migration[5.0]
  def change
    add_column :wikis, :comments, :text
  end
end
