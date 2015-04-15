class CreateProjectDetails < ActiveRecord::Migration
  def change
    create_table :project_details do |t|
      t.integer :employee_id
      t.integer :project_id
      t.integer :subproject_id
      t.integer :task_id

      t.timestamps null: false
    end
  end
end
