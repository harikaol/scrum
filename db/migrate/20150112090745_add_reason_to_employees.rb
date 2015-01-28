class AddReasonToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :reason, :string
  end
end
