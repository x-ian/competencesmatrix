class CustomizationController < ApplicationController

  def index_skill_maturity_model
    if params.key?(:edit_skill_maturity_model)
      @skill_maturity_model = SkillMaturityModel.find(params[:edit_skill_maturity_model])
    end
    @skill_maturity_models = SkillMaturityModel.find(:all)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def index_skill_model
    if params.key?(:edit_skill_model)
      @skill_model = SkillModel.find(params[:edit_skill_model])
    end
    @skill_models = SkillModel.find(:all)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def index_skill_range
    if params.key?(:edit_skill_range)
      @skill_range = SkillRange.find(params[:edit_skill_range])
    end
    @skill_ranges = SkillRange.find(:all)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def index_skill_maturity_range
    if params.key?(:edit_skill_maturity_range)
      @skill_maturity_range = SkillMaturityRange.find(params[:edit_skill_maturity_range])
    end
    @skill_maturity_ranges = SkillMaturityRange.find(:all)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def index
    redirect_to :action => "index_skill_maturity_model"
  end

  def index_complete
    if params.key?(:edit_skill_range)
      @skill_range = SkillRange.find(params[:edit_skill_range])
    end
    @skill_ranges = SkillRange.find(:all)

    if params.key?(:edit_skill_model)
      @skill_model = SkillModel.find(params[:edit_skill_model])
    end
    @skill_models = SkillModel.find(:all)

    if params.key?(:edit_skill_maturity_range)
      @skill_maturity_range = SkillMaturityRange.find(params[:edit_skill_maturity_range])
    end
    @skill_maturity_ranges = SkillMaturityRange.find(:all)

    if params.key?(:edit_skill_maturity_model)
      @skill_maturity_model = SkillMaturityModel.find(params[:edit_skill_maturity_model])
    end
    @skill_maturity_models = SkillMaturityModel.find(:all)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def create_skill_range
    @skill_range = SkillRange.new(params[:skill_range])

    respond_to do |format|
      if @skill_range.save
        flash[:notice] = 'Skill range was successfully created.'
      else
        flash[:error] = 'Error while creating skill range.'
      end
      format.html { redirect_to(:action => "index_skill_range") }
    end
  end

  def edit_skill_range
    respond_to do |format|
      format.html { redirect_to(:action => "index_skill_range", :edit_skill_range => params[:id]) }
    end
  end

  def update_skill_range
    @skill_range = SkillRange.find(params[:id])

    respond_to do |format|
      if @skill_range.update_attributes(params[:skill_range])
        flash[:notice] = 'Skill range was successfully updated.'
      else
        flash[:error] = 'Error while updating skill range.'
      end
      format.html { redirect_to(:action => "index_skill_range") }
    end
  end

  def destroy_skill_range
    @skill_range = SkillRange.find(params[:id])
    @skill_range.destroy

    respond_to do |format|
      format.html { redirect_to(:action => "index_skill_range") }
    end
  end





  def create_skill_model
    @skill_model = SkillModel.new(params[:skill_model])

    respond_to do |format|
      if @skill_model.save
        flash[:notice] = 'Skill model was successfully created.'
      else
        flash[:error] = 'Error while creating skill model.'
      end
      format.html { redirect_to(:action => "index_skill_model") }
    end
  end

  def edit_skill_model
    respond_to do |format|
      format.html { redirect_to(:action => "index_skill_model", :edit_skill_model => params[:id]) }
    end
  end

  def update_skill_model
    @skill_model = SkillModel.find(params[:id])

    respond_to do |format|
      if @skill_model.update_attributes(params[:skill_model])
        flash[:notice] = 'Skill model was successfully updated.'
      else
        flash[:error] = 'Error while updating skill model.'
      end
      format.html { redirect_to(:action => "index_skill_model") }
    end
  end

  def destroy_skill_model
    @skill_model = SkillModel.find(params[:id])
    @skill_model.destroy

    respond_to do |format|
      format.html { redirect_to(:action => "index_skill_model") }
    end
  end




  #####################################

  def create_skill_maturity_range
    @skill_maturity_range = SkillMaturityRange.new(params[:skill_maturity_range])

    respond_to do |format|
      if @skill_maturity_range.save
        flash[:notice] = 'Skill maturity range was successfully created.'
      else
        flash[:error] = 'Error while creating skill maturity range.'
      end
      format.html { redirect_to(:action => "index_skill_maturity_range") }
    end
  end

  def edit_skill_maturity_range
    respond_to do |format|
      format.html { redirect_to(:action => "index_skill_maturity_range", :edit_skill_maturity_range => params[:id]) }
    end
  end

  def update_skill_maturity_range
    @skill_maturity_range = SkillMaturityRange.find(params[:id])

    respond_to do |format|
      if @skill_maturity_range.update_attributes(params[:skill_maturity_range])
        flash[:notice] = 'Skill maturity range was successfully updated.'
      else
        flash[:error] = 'Error while updating skill maturity range.'
      end
      format.html { redirect_to(:action => "index_skill_maturity_range") }
    end
  end

  def destroy_skill_maturity_range
    @skill_maturity_range = SkillMaturityRange.find(params[:id])
    @skill_maturity_range.destroy

    respond_to do |format|
      format.html { redirect_to(:action => "index_skill_maturity_range") }
    end
  end





  def create_skill_maturity_model
    @skill_maturity_model = SkillMaturityModel.new(params[:skill_maturity_model])

    respond_to do |format|
      if @skill_maturity_model.save
        flash[:notice] = 'Skill maturity model was successfully created.'
      else
        flash[:error] = 'Error while creating skill maturity model.'
      end
      format.html { redirect_to(:action => "index_skill_maturity_model") }
    end
  end

  def edit_skill_maturity_model
    respond_to do |format|
      format.html { redirect_to(:action => "index_skill_maturity_model", :edit_skill_maturity_model => params[:id]) }
    end
  end

  def update_skill_maturity_model
    @skill_maturity_model = SkillMaturityModel.find(params[:id])

    respond_to do |format|
      if @skill_maturity_model.update_attributes(params[:skill_maturity_model])
        flash[:notice] = 'Skill maturity model was successfully updated.'
      else
        flash[:error] = 'Error while updating skill maturity model.'
      end
      format.html { redirect_to(:action => "index_skill_maturity_model") }
    end
  end

  def destroy_skill_maturity_model
    @skill_maturity_model = SkillMaturityModel.find(params[:id])
    @skill_maturity_model.destroy

    respond_to do |format|
      format.html { redirect_to(:action => "index_skill_maturity_model") }
    end
  end


end
