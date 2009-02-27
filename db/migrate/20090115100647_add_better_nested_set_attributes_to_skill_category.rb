class AddBetterNestedSetAttributesToSkillCategory < ActiveRecord::Migration
  def self.up
    add_column :skill_categories, :lft, :integer, :null => false
    add_column :skill_categories, :rgt, :integer, :null => false
    add_column :skill_categories, :lock_version, :integer, :default => 0
  end

  def self.down
    remove_column :skill_categories, :lock_version
    remove_column :skill_categories, :rgt
    remove_column :skill_categories, :lft
  end
end
