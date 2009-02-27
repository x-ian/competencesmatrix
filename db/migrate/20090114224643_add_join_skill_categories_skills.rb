class AddJoinSkillCategoriesSkills < ActiveRecord::Migration
  def self.up
    create_table :skill_categories_skills, :id => false do |t|
      t.integer :skill_id
      t.integer :skill_category_id

      t.timestamps
    end

  end

  def self.down
    drop_table :skill_categories_skills
  end
end
