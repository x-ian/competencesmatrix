class OrganizationalUnitsController < ApplicationController

  def index
    if params.key?(:edit_unit)
      @unit = OrganizationalUnit.find(params[:edit_unit])
    end
    @units = OrganizationalUnit.find(:all)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def create
    @unit = OrganizationalUnit.new(params[:organizational_unit])
    
    respond_to do |format|
      if @unit.save
        if params[:organizational_unit][:parent_id] != "0"
          @unit.move_to_child_of OrganizationalUnit.find(params[:organizational_unit][:parent_id])
        end
        flash[:notice] = 'Organizational Unit was successfully created.'
      else
        flash[:error] = 'Error while creating organizational unit.'
      end
      format.html { redirect_to(:action => "index") }
    end
  end

  def edit
    respond_to do |format|
      format.html { redirect_to(:action => "index", :edit_unit => params[:id]) }
    end
  end

  def update
    @unit = OrganizationalUnit.find(params[:id])

    respond_to do |format|
      if @unit.update_attributes(params[:organizational_unit])
        if params[:organizational_unit][:parent_id] != "0"
          @unit.move_to_child_of OrganizationalUnit.find(params[:organizational_unit][:parent_id])
        end
        flash[:notice] = 'Organizational unit was successfully updated.'
      else
        flash[:error] = 'Error while updating organizational unit.'
      end
      format.html { redirect_to(:action => "index") }
    end
  end

  def destroy
    @unit = OrganizationalUnit.find(params[:id])
    @unit.destroy

    respond_to do |format|
      flash[:notice] = 'Organizational unit was deleted.'
      format.html { redirect_to(:action => "index") }
    end
  end

end
