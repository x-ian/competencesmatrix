class RemoveSkillGroupIdFromSkill < ActiveRecord::Migration
  def self.up
    remove_column :skills, :skill_group_id
  end

  def self.down
    add_column :skills, :skill_group_id, :integer
  end
end
