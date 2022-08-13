class CreateSetdates < ActiveRecord::Migration[7.0]
  def change
    create_table :setdates do |t|
      t.string :date

      t.timestamps
    end
  end
end
