class RemoveCol < ActiveRecord::Migration[7.0]
  def change
    remove_column :mydates, :school, :string
    remove_column :mydates, :college, :string
    remove_column :mydates, :educate, :string
    remove_column :mydates, :year, :string
    remove_column :mydates, :percentage, :string
    remove_column :mydates, :skill, :string
  end
end
