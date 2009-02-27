class RemoveEmployeeGroupIdFromEmployee < ActiveRecord::Migration
  def self.up
    remove_column :employees, :employee_group_id
  end

  def self.down
    add_column :employees, :employee_group_id, :integer
  end
end
