class CreateSkillMaturityModels < ActiveRecord::Migration
  def self.up
    create_table :skill_maturity_models do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :skill_maturity_models
  end
end
