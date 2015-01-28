class EmployeesController < ApplicationController
  def index
    @employees=Employee.application_forms
  end
  def new
    @employee= Employee.new
  end
  def create
    @employee = Employee.new(employee_params)
    @employee.id=Employee.get_id
    @employee.status = 'Created'
    if @employee.save
      redirect_to employees_path
    else
      render 'new'
    end
  end
  def show
    @employee=Employee.find(params[:id])
  end
  def edit
    @employee=Employee.find(params[:id])
  end
  def update
    @employee=Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to employees_path
    else
      render "edit"
    end

  end
  def home
  end
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    redirect_to employees_path
  end
  def terminate
    @employee=Employee.find(params[:id])
  end
  def employee_params
    params.require(:employee).permit(:name,:phone_no,:date_of_joining,:designation,:date_of_birth,:email_id,:qualification, :avatar,:date_of_leaving,:reason,:status)
  end
end
