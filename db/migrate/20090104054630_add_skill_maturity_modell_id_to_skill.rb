class AddSkillMaturityModellIdToSkill < ActiveRecord::Migration
  def self.up
    add_column :skills, :skill_maturity_model_id, :integer
  end

  def self.down
    remove_column :skills, :skill_maturity_model_id
  end
end
