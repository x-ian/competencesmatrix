class SkillMaturityRangeDescription < ActiveRecord::Base
  belongs_to :skill
  belongs_to :skill_maturity_range
end
