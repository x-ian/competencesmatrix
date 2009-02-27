class SkillMaturityModel < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :skills
  has_many :skill_maturity_ranges, :dependent => :destroy
end
