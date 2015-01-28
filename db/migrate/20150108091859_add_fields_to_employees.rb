class AddFieldsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :date_of_joining, :string
  end
end
