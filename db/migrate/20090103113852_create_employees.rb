class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.integer :employee_group_id

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
