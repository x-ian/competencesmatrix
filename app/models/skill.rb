class Skill < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  has_and_belongs_to_many :skill_categories
  has_many :competences
  belongs_to :skill_maturity_model
  belongs_to :skill_model
  has_many :skill_maturity_range_descriptions
end
