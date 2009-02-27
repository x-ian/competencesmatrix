class AddDefaultMaturityRangeDescriptionToSkillMaturityRange < ActiveRecord::Migration
  def self.up
    add_column :skill_maturity_ranges, :default_maturity_range_description, :text
  end

  def self.down
    remove_column :skill_maturity_ranges, :default_maturity_range_description
  end
end
