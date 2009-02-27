class AddRoleIdToCompetence < ActiveRecord::Migration
  def self.up
    add_column :competences, :role_id, :integer
  end

  def self.down
    remove_column :competences, :role_id
  end
end
