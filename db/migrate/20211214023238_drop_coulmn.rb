class DropCoulmn < ActiveRecord::Migration[6.1]
  def change
    drop_table :people
  end
end
