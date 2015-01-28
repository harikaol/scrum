class AddFieldsToUserTable < ActiveRecord::Migration
  def change
add_column :users, :username, :string
remove_column :users, :email, :string
  end
end
