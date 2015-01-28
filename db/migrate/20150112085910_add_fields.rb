class AddFields < ActiveRecord::Migration
  def change
add_column :employees, :date_of_leaving, :string
  end
end
