class AddFieldsToProjects < ActiveRecord::Migration
  def change
add_column :projects, :completion_status, :string
  end
end
