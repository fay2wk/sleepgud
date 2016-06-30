class ChangeBirthdateToDate < ActiveRecord::Migration[5.0]
  def change
    def up
      change_column :user, :birthdate, :date
  end
    def down
      change_column :user, :birthdate, :string
    end
  end
end
