class AddEmailInactiveToEmployee < ActiveRecord::Migration
  def self.up
    #add_column :employees, :email, :string
    add_column :employees, :inactive, :boolean
  end

  def self.down
    remove_column :employees, :inactive
    #remove_column :employees, :email
  end
end
