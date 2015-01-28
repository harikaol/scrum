class DFieldsToProjects < ActiveRecord::Migration
  def change
add_column :projects, :number_of_subprojects, :string
add_column :projects, :subprojects_completed, :string
add_column :projects, :subprojects_in_progress, :string
add_column :projects, :subprojects_scrapped, :string
  end
end
