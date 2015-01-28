class OwnerFieldsTo < ActiveRecord::Migration
  def change
add_column :subprojects, :owner, :string
  end
end
