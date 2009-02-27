class CreateCompetences < ActiveRecord::Migration
  def self.up
    create_table :competences do |t|
      t.integer :employee_id
      t.integer :skill_range_id
      t.integer :competence_area_id

      t.timestamps
    end
  end

  def self.down
    drop_table :competences
  end
end
