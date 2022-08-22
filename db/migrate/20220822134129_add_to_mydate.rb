class AddToMydate < ActiveRecord::Migration[7.0]
  def change
    add_column :mydates, :profile, :string
  end
end
