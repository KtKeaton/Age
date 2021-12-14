class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :person, :birthday, :datetime
  end
end
