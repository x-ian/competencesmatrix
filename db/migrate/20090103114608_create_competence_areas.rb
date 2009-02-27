class CreateCompetenceAreas < ActiveRecord::Migration
  def self.up
    create_table :competence_areas do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :competence_areas
  end
end
