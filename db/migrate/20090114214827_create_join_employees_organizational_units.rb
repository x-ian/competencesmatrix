class CreateJoinEmployeesOrganizationalUnits < ActiveRecord::Migration
  def self.up
    create_table :employees_organizational_units, :id => false do |t|
      t.integer :employee_id
      t.integer :organizational_unit_id

      t.timestamps
    end
  end

  def self.down
    drop_table :employees_organizational_units
  end
end
