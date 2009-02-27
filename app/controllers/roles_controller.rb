class RolesController < ApplicationController

  def index
    if params.key?(:edit_role)
      @role = Role.find(params[:edit_role])
    end
    @roles = Role.find(:all)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def create
    @role = Role.new(params[:role])
    @role.organizational_units = OrganizationalUnit.find(params[:organizational_unit_ids]) if params[:organizational_unit_ids]

    respond_to do |format|
      if @role.save
        flash[:notice] = 'Role was successfully created.'
      else
        flash[:error] = 'Error while creating role.'
      end
      format.html { redirect_to(:action => "index") }
    end
  end

  def edit
    respond_to do |format|
      format.html { redirect_to(:action => "index", :edit_role => params[:id]) }
    end
  end

  def update
    @role = Role.find(params[:id])
    @role.organizational_units = OrganizationalUnit.find(params[:organizational_unit_ids]) if params[:organizational_unit_ids]

    respond_to do |format|
      if @role.update_attributes(params[:role])
        flash[:notice] = 'Role was successfully updated.'
      else
        flash[:error] = 'Error while updating role.'
      end
      format.html { redirect_to(:action => "index") }
    end
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy

    respond_to do |format|
      format.html { redirect_to(:action => "index") }
    end
  end

end