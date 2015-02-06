class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :project_id
      t.string :project_name
      t.integer :subproject_id
      t.string :subproject_name
      t.integer :task_id
      t.string :task_name
      t.text :issue_description
      t.text :issue
      t.text :resolution

      t.timestamps null: false
    end
  end
end
