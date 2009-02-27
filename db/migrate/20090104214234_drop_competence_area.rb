class DropCompetenceArea < ActiveRecord::Migration
  def self.up
    drop_table :competence_areas
  end

  def self.down
    create_table :competence_areas do |t|
      t.string :name

      t.timestamps
    end
  end
end
