class AddSkillModelIdToSkill < ActiveRecord::Migration
  def self.up
    add_column :skills, :skill_model_id, :integer
  end

  def self.down
    remove_column :skills, :skill_model_id
  end
end
