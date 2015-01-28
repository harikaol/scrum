class TasksController < ApplicationController
  def index
    @tasks=Task.all
  end
  def new
    @task=Task.new
  end
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render 'new'
    end
  end
  def show
    @task=Task.find(params[:id])
  end
  def edit
    @task=Task.find(params[:id])
  end
  def update
    @task =Task.find(params[:id])
    if @task.update(task_params)
      redirect_to tasks_path
    else
      render "edit"
    end
  end
  def view
    @task=Task.find(params[:id])
  end
  def task_params
    params.require(:task).permit(:task_name,:priority,:owner,:status,:start_date,:end_date,:actual_start_date,:expected_end_date,:expected_number_of_days)
  end
end
