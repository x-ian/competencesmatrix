class CreateJoinOrganizationalUnitsRoles < ActiveRecord::Migration
  def self.up
    create_table :organizational_units_roles, :id => false do |t|
      t.integer :organizational_unit_id
      t.integer :role_id

      t.timestamps
    end
  end

  def self.down
    drop_table :organizational_units_roles
  end
end
