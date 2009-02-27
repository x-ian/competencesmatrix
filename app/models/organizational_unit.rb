class OrganizationalUnit < ActiveRecord::Base
  acts_as_nested_set

  validates_presence_of :name
  validates_uniqueness_of :name, :scope => "parent_id"

  has_and_belongs_to_many :roles
  has_and_belongs_to_many :employees

  def self.find_all_root_elements
    OrganizationalUnit.find(:all, :conditions => "parent_id IS NULL")
  end

end
