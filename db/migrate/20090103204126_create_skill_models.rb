class CreateSkillModels < ActiveRecord::Migration
  def self.up
    create_table :skill_models do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :skill_models
  end
end
