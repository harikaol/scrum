class TasksController < ApplicationController
    def index
      @tasks=Task.all
    end
    def new
      @task=Task.new
    end
    def create
      @task = Task.new(task_params)
      @task.subproject_id=params[:subproject_id]
      if @task.save
        redirect_to subprojects_path
      else
        render 'new'
      end
    end
    def show
      @task=Task.find(params[:id])
      @issue = Issue.new
      @issue.task_id = @task.id
      @issue.subproject_id = @task.subproject.id
      @issue.project_id = @task.subproject.project.id
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
      params.require(:task).permit(:task_name,:priority,:owner,:status,:start_date,:end_date,:actual_start_date,:expected_end_date,:expected_number_of_days, :project_id)
    end
  end

