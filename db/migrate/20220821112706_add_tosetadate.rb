class AddTosetadate < ActiveRecord::Migration[7.0]
  def change
    add_column :setdates, :profile, :string
  end
end
