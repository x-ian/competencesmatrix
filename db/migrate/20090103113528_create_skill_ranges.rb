class CreateSkillRanges < ActiveRecord::Migration
  def self.up
    create_table :skill_ranges do |t|
      t.integer :ability_id
      t.string :value

      t.timestamps
    end
  end

  def self.down
    drop_table :skill_ranges
  end
end
