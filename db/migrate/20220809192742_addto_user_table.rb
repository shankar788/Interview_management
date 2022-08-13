class AddtoUserTable < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :attend_time, :string
    add_column :users, :interview_date, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
