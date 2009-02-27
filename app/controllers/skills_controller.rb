class SkillsController < ApplicationController

  def index_complete
    if params.key?(:edit_skill)
      @skill = Skill.find(params[:edit_skill])
    end
    @skills = Skill.find(:all)

    if params.key?(:edit_skill_category)
      @skill_category = SkillCategory.find(params[:edit_skill_category])
    end
    @skill_categories = SkillCategory.find(:all)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def index_skill_category
    if params.key?(:edit_skill_category)
      @skill_category = SkillCategory.find(params[:edit_skill_category])
    end
    @skill_categories = SkillCategory.find(:all)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def index_skill
    if params.key?(:edit_skill)
      @skill = Skill.find(params[:edit_skill])
    end
    @skills = Skill.find(:all)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def create
    @skill = Skill.new(params[:skill])
    @skill.skill_categories = SkillCategory.find(params[:skill_category_ids]) if params[:skill_category_ids]

    respond_to do |format|
      if @skill.save
        flash[:notice] = 'Skill was successfully created.'
      else
        flash[:error] = 'Error while creating skill.'
      end
      format.html { redirect_to(:action => "index_skill") }
    end
  end

  def edit
    respond_to do |format|
      format.html { redirect_to(:action => "index_skill", :edit_skill => params[:id]) }
    end
  end

  def update
    @skill = Skill.find(params[:id])
    @skill.skill_categories = SkillCategory.find(params[:skill_category_ids]) if params[:skill_category_ids]

    respond_to do |format|
      if @skill.update_attributes(params[:skill])
        flash[:notice] = 'Skill was successfully updated.'
      else
        flash[:error] = 'Error while updating skill.'
      end
      format.html { redirect_to(:action => "index_skill") }
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy

    respond_to do |format|
      format.html { redirect_to(:action => "index_skill") }
    end
  end

  def show_maturity_model_ranges
    @maturity_model_id = params[:id]
    respond_to do | format |
      format.js
    end
  end



  ##########

    def create_skill_category
    @c = SkillCategory.new(params[:skill_category])

    respond_to do |format|
      if @c.save
        if params[:skill_category][:parent_id] != "0"
          @c.move_to_child_of SkillCategory.find(params[:skill_category][:parent_id])
        end
        flash[:notice] = 'Skill category was successfully created.'
      else
        flash[:error] = 'Error while creating skill category.'
      end
      format.html { redirect_to(:action => "index_skill_category") }
    end
  end

  def edit_skill_category
    respond_to do |format|
      format.html { redirect_to(:action => "index_skill_category", :edit_skill_category => params[:id]) }
    end
  end

  def update_skill_category
    @c = SkillCategory.find(params[:id])

    respond_to do |format|
      if @c.update_attributes(params[:skill_category])
        if params[:skill_category][:parent_id] != "0"
          @c.move_to_child_of SkillCategory.find(params[:skill_category][:parent_id])
        end
        flash[:notice] = 'Skill category was successfully updated.'
      else
        flash[:error] = 'Error while updating skill category.'
      end
      format.html { redirect_to(:action => "index_skill_category") }
    end
  end

  def destroy_skill_category
    @c = SkillCategory.find(params[:id])
    @c.destroy

    respond_to do |format|
      flash[:notice] = 'Skill catgory was deleted.'
      format.html { redirect_to(:action => "index_skill_category") }
    end
  end

end
