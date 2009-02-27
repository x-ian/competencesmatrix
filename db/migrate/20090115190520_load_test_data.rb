require 'active_record/fixtures'

class LoadTestData < ActiveRecord::Migration
  def self.up
    down
    directory = File.join( File.dirname(__FILE__) , 'data' )
    Fixtures.create_fixtures(directory, 'employees')

    Fixtures.create_fixtures(directory, 'organizational_units')
    Fixtures.create_fixtures(directory, 'roles')
    Fixtures.create_fixtures(directory, 'skill_categories')

    Fixtures.create_fixtures(directory, 'skill_maturity_models')

    Fixtures.create_fixtures(directory, 'skill_maturity_ranges')

    Fixtures.create_fixtures(directory, 'skill_models')
    Fixtures.create_fixtures(directory, 'skill_ranges')
  end

  def self.down
    OrganizationalUnit.delete_all
    Employee.delete_all
    Role.delete_all
    SkillCategory.delete_all
    SkillMaturityModel.delete_all
    SkillMaturityRange.delete_all
    SkillModel.delete_all
  end
end
