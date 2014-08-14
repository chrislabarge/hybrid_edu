class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false #this makes it so users cannot become adminastrators by default
  end
end
