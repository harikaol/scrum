class AddFieldsTo < ActiveRecord::Migration
  def change
add_column :subprojects, :status, :string
  end
end
