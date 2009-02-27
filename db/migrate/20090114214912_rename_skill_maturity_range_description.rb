class RenameSkillMaturityRangeDescription < ActiveRecord::Migration
  def self.up
    rename_table("skill_maturity_range_description_for_skills", "skill_maturity_range_descriptions")
  end

  def self.down
    rename_table("skill_maturity_range_descriptions", "skill_maturity_range_description_for_skills")
  end
end
