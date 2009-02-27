class EmployeesController < ApplicationController

  def index
    if params.key?(:edit_employee)
      @employee = Employee.find(params[:edit_employee])
    end
    @employees = Employee.find(:all)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def create
    @employee = Employee.new(params[:employee])
    @employee.organizational_units = OrganizationalUnit.find(params[:organizational_unit_ids]) if params[:organizational_unit_ids]

    respond_to do |format|
      if @employee.save
        flash[:notice] = 'Employee was successfully created.'
      else
        flash[:error] = 'Error while creating employee.'
      end
      format.html { redirect_to(:action => "index") }
    end
  end

  def edit
    respond_to do |format|
      format.html { redirect_to(:action => "index", :edit_employee => params[:id]) }
    end
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.organizational_units = OrganizationalUnit.find(params[:organizational_unit_ids]) if params[:organizational_unit_ids]

    respond_to do |format|
      if @employee.update_attributes(params[:employee])
        flash[:notice] = 'Employee was successfully updated.'
      else
        flash[:error] = 'Error while updating employee.'
      end
      format.html { redirect_to(:action => "index") }
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    respond_to do |format|
      format.html { redirect_to(:action => "index") }
    end
  end

end