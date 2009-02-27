class CreateSkillMaturityRangeDescriptionForSkills < ActiveRecord::Migration
  def self.up
    create_table :skill_maturity_range_description_for_skills do |t|
      t.integer :skill_id
      t.integer :skill_maturity_range_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :skill_maturity_range_description_for_skills
  end
end
