class AddtoUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :first, :string
    add_column :users, :second, :string
    add_column :users, :third, :string
    add_column :users, :role, :integer
    add_column :users, :inter, :string
    
    #Ex:- :default =>''


    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
