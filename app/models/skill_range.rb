class SkillRange < ActiveRecord::Base
  validates_presence_of :value
  validates_uniqueness_of :value, :scope => "skill_model_id"
  
  belongs_to :skill_model
  has_many :competences
end
