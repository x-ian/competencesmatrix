class AddRoleIdToEmployee < ActiveRecord::Migration
  def self.up
    add_column :employees, :role_id, :integer
  end

  def self.down
    remove_column :employees, :role_id
  end
end
