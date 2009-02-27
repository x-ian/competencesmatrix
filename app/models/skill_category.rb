class SkillCategory < ActiveRecord::Base
  acts_as_nested_set

  validates_presence_of :name
  validates_uniqueness_of :name, :scope => "parent_id"

  has_and_belongs_to_many :skills

  def self.find_all_root_elements
    SkillCategory.find(:all, :conditions => "parent_id IS NULL")
  end

end
