class AddSkillMaturityRangeIdToCompetence < ActiveRecord::Migration
  def self.up
    add_column :competences, :skill_maturity_range_id, :integer
  end

  def self.down
    remove_column :competences, :skill_maturity_range_id
  end
end
