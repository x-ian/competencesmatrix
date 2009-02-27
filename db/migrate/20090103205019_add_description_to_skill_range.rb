class AddDescriptionToSkillRange < ActiveRecord::Migration
  def self.up
    add_column :skill_ranges, :description, :text
  end

  def self.down
    remove_column :skill_ranges, :description
  end
end
