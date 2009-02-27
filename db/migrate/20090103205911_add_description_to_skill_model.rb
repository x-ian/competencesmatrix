class AddDescriptionToSkillModel < ActiveRecord::Migration
  def self.up
    add_column :skill_models, :description, :text
  end

  def self.down
    remove_column :skill_models, :description
  end
end
