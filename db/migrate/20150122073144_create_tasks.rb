class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.integer :employee_id
      t.integer :subproject_id
      t.string :project_name
      t.string :subproject_name
      t.string :task_name
      t.string :priority
      t.string :status
      t.string :owner
      t.integer :start_date
      t.integer :end_date
      t.string :expected_number_of_days
      t.integer :actual_start_date
      t.integer :expected_end_date

      t.timestamps null: false
    end
  end
end
