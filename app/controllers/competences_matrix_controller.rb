class CompetencesMatrixController < ApplicationController

  def show_maturity_model
    @maturity_model_id = params[:id]
    respond_to do | format |
      format.js
    end
  end
  
  def index
    @actual_competences = true
    @required_competences = false

    @competences = Competence.find(:all)
    @employees_or_roles = Employee.find(:all)
    @skills = Skill.find(:all)

    respond_to do |format|
      format.html # index.html.erb
    end

  end

  def index_required_competences
    @actual_competences = false
    @required_competences = true

    @competences = Competence.find(:all)
    @employees_or_roles = Role.find(:all)
    @skills = Skill.find(:all)

    respond_to do |format|
      format.html # index.html.erb
    end

  end

  def edit_competence
    @actual_competences = true unless params[:employee_id] == nil
    @required_competences = true unless params[:role_id] == nil

    @competence = Competence.find_by_employee_id_and_skill_id(params[:employee_id], params[:skill_id]) if @actual_competences
    @competence = Competence.find_by_role_id_and_skill_id(params[:role_id], params[:skill_id]) if @required_competences
    @employee_or_role = Employee.find(params[:employee_id]) if @actual_competences
    @employee_or_role = Role.find(params[:role_id]) if @required_competences

    @skill = Skill.find(params[:skill_id])
    @competence = Competence.new if @competence == nil

    @competence.employee_id = params[:employee_id] if @actual_competences
    @competence.role_id = params[:role_id] if @required_competences
    @competence.skill_id = params[:skill_id]
    @competence.skill_range_id = params[:skill_range_id]
    @competence.skill_maturity_range_id = params[:skill_maturity_range_id]
    @competence.expiry_date = params[:expiry_date]
    @competence.last_change = Time.now
    
    respond_to do |format|
      if @competence.save
        flash[:notice] = 'Competence was successfully created.'
      else
        flash[:error] = 'Error while saving competence.'
      end
      format.js
    end
  end
end
