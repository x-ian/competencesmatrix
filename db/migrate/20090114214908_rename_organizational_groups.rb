class RenameOrganizationalGroups < ActiveRecord::Migration
  def self.up
    rename_table("employee_groups", "organizational_units")
  end

  def self.down
    rename_table("organizational_units", "employee_groups")
  end
end
