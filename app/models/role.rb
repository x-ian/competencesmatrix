class Role < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  has_and_belongs_to_many :organizational_units
  has_many :employees
  has_many :competences
end
