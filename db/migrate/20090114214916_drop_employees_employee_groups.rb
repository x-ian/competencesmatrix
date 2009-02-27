class DropEmployeesEmployeeGroups< ActiveRecord::Migration
  def self.up
    drop_table :employees_employee_groups
  end

  def self.down
    create_table :employees_employee_groups do |t|
      t.integer :employee_id
      t.integer :employee_group_id

      t.timestamps
    end
  end
end
