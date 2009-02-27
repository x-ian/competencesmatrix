module CompetencesMatrixHelper

  def maturity_level_description(smr, skill_id)
    d = ""
    smrd = SkillMaturityRangeDescription.find_by_skill_id_and_skill_maturity_range_id(skill_id, smr.id)
    d += smrd.description unless smrd == nil
    d += smr.default_maturity_range_description if smrd == nil && smr.default_maturity_range_description != nil
    return d
  end

  def maturity_level_description_long(smr, skill_id)
    d = maturity_level_description(smr, skill_id)
    d += " (for " + smr.value + ")"
    return d
  end

  def competence_id(employee_or_role, skill)
    employee_or_role.id.to_s + "_" + skill.id.to_s
  end
end
