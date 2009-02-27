class SkillMaturityRange < ActiveRecord::Base
  validates_presence_of :value
  validates_uniqueness_of :value, :scope => "skill_maturity_model_id"

  belongs_to :skill_maturity_model
  has_many :competences
  has_many :skill_maturity_range_descriptions, :dependent => :destroy
end
