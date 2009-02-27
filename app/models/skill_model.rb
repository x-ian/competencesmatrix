class SkillModel < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :skill_ranges, :dependent => :destroy
  has_many :skills
end
