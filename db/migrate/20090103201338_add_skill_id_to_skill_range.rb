class AddSkillIdToSkillRange < ActiveRecord::Migration
  def self.up
    add_column :skill_ranges, :skill_id, :integer
    remove_column :skill_ranges, :ability_id
  end

  def self.down
    remove_column :skill_ranges, :skill_id
    add_column :skill_ranges, :ability_id, :integer
  end
end
