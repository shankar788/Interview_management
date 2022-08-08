class AddMydate < ActiveRecord::Migration[7.0]
  def change
    add_column :mydates, :ten, :string
    add_column :mydates, :year, :string
    add_column :mydates, :percentage, :string
    add_column :mydates, :twelth, :string
    add_column :mydates, :year1, :string
    add_column :mydates, :percentage1, :string
    add_column :mydates, :digree, :string
    add_column :mydates, :year2, :string
    add_column :mydates, :percentage2, :string
  end
end
