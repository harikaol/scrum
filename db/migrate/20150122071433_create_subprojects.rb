class CreateSubprojects < ActiveRecord::Migration
  def change
    create_table :subprojects do |t|
      t.integer :project_id
      t.integer :employee_id
      t.string :project_name
      t.integer :subproject_id
      t.string :subproject_name
      t.string :subproject_description
      t.string :constraints
      t.string :primary_owner
      t.integer :date_of_starting
      t.integer :expected_date_of_completion
      t.integer :number_of_tasks
      t.integer :number_of_tasks_completed
      t.integer :number_of_tasks_in_progress
      t.integer :tasks_scrapped

      t.timestamps null: false
    end
  end
end
