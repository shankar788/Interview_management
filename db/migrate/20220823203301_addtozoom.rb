class Addtozoom < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :zoom_link,:string
  end
end
