class PassFieldsToProjects < ActiveRecord::Migration
  def change
add_column :projects, :closing_comments, :string
add_column :projects, :closing_date, :string
  end
end
