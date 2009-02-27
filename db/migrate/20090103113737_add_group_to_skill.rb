class AddGroupToSkill < ActiveRecord::Migration
  def self.up
    add_column :skills, :skill_group_id, :integer
  end

  def self.down
    remove_column :skills, :skill_group_id
  end
end
