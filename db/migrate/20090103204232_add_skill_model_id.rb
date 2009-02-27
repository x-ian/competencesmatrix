class AddSkillModelId < ActiveRecord::Migration
  def self.up
    add_column :skill_ranges, :skill_model_id, :integer
    add_column :skills, :skill_model_id, :integer
    remove_column :skill_ranges, :skill_id
  end

  def self.down
    remove_column :skill_ranges, :skill_model_id
    remove_column :skills, :skill_model_id
    add_column :skill_ranges, :skill_id, :integer
  end
end
