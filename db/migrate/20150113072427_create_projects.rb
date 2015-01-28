class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.text :description
      t.string :complexity
      t.string :date_received
      t.string :volume
      t.text :constraints
      t.string :date_of_starting
      t.string :expected_date_of_completion
      t.string :client
      t.string :priority
      t.string :category
      t.string :primary_owner

      t.timestamps null: false
    end
  end
end
