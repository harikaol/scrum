class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :phone_no
      t.string :date
      t.string :of
      t.integer :joining
      t.string :designation
      t.integer :date_of_birth
      t.string :email_id
      t.string :qualification

      t.timestamps null: false
    end
  end
end
