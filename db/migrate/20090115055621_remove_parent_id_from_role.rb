class RemoveParentIdFromRole < ActiveRecord::Migration
  def self.up
    #remove_column :roles, :parent_id
  end

  def self.down
    #add_column :roles, :parent_id, :integer
  end
end
