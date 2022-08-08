class Droptable < ActiveRecord::Migration[7.0]
  def change
    drop_table :drives
  end
end
