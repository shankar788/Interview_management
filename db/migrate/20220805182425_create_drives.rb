class CreateDrives < ActiveRecord::Migration[7.0]
  def change
    create_table :drives do |t|
      t.string :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
