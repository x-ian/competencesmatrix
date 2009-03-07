class Competence < ActiveRecord::Base
  belongs_to :role
  belongs_to :employee
  belongs_to :skill_range
  belongs_to :skill_maturity_range
  belongs_to :skill
end
