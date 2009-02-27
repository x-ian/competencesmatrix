class RemoveCompetenceAreaIdFromCompetence < ActiveRecord::Migration
  def self.up
    remove_column :competences, :competence_area_id
  end

  def self.down
    add_column :competences, :competence_area_id, :integer
  end
end
