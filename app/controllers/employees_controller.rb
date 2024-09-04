class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  def index
    @employees = Employee.all.order(:name)
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.valid?
      @employee.save
      redirect_to employees_path, notice: "Employee was successfully created."
    else
      flash[:errors] = @employee.errors.full_messages
      render :new
    end
  end

  def edit

  end

  def update
    if @employee.update(employee_params)
      redirect_to employees_path, notice: "Employee was successfully updated."
    else
      flash[:errors] = @employee.errors.full_messages
      render :edit
    end
  end

  def destroy
    if @employee.destroy
      flash[:notice] = "Employee was successfully destroyed."
    else
      flash[:errors] = 'Employee cannot destroy'
    end
    redirect_to employees_path
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:name, :gender, :dob, :hobbies, :department_id)
  end

end
