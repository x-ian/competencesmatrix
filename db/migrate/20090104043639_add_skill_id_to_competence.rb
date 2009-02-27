class AddSkillIdToCompetence < ActiveRecord::Migration
  def self.up
    add_column :competences, :skill_id, :integer
  end

  def self.down
    remove_column :competences, :skill_id
  end
end
