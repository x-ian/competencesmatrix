class CreateJoinEmployeesEmployeeGroups < ActiveRecord::Migration
  def self.up
    create_table :employees_employee_groups, :id => false do |t|
      t.integer :employee_id
      t.integer :employee_group_id
    end
  end

  def self.down
    drop_table :employees_employee_groups
  end
end
