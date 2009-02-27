class CreateSkillMaturityRanges < ActiveRecord::Migration
  def self.up
    create_table :skill_maturity_ranges do |t|
      t.integer :skill_maturity_model_id
      t.string :value
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :skill_maturity_ranges
  end
end
