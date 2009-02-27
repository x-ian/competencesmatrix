class AddLastChangeAndExpiryDateToCompetence < ActiveRecord::Migration
  def self.up
    add_column :competences, :last_change, :datetime
    add_column :competences, :expiry_date, :date
  end

  def self.down
    remove_column :competences, :expiry_date
    remove_column :competences, :last_change
  end
end
