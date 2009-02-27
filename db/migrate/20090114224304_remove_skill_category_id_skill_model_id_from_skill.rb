class RemoveSkillCategoryIdSkillModelIdFromSkill < ActiveRecord::Migration
  def self.up
    remove_column :skills, :skill_category_id
    remove_column :skills, :skill_model_id
  end

  def self.down
    add_column :skills, :skill_model_id, :integer
    add_column :skills, :skill_category_id, :integer
  end
end
