class AFieldsToProjects < ActiveRecord::Migration
  def change
add_column :projects, :reason_for_abondoned, :string
add_column :projects, :reason_for_suspend, :string
end
end
