class ProjectDetailsController < ApplicationController
  def index
    @tasks= Task.all
  end
  # def new
  #   @task=Task.new
  # end
  def create
    @project_detail = ProjectDetail.new(project_detail_params)
    @project_detail.subproject_id=params[:subproject_id]
    if @project_detail.save
      redirect_to project_details_path
    else
      render 'new'
    end
  end
  # def show
  #   @task=Task.find(params[:id])
  #   @issue = Issue.new
  #   @issue.task_id = @task.id
  #   @issue.subproject_id = @task.subproject.id
  #   @issue.project_id = @task.subproject.project.id
  # end
  # def edit
  #   @task=Task.find(params[:id])
  # end
  # def update
  #   @task =Task.find(params[:id])
  #   if @task.update(task_params)
  #     redirect_to tasks_path
  #   else
  #     render "edit"
  #   end
  # end
  # def view
  #   @x=Project_detail.find(params[:id])
  end
  def project_detail_params
    params.require(:project_detail).permit(:task_name,:task_id,:subproject_id,:subproject_name,:project_name,:project_id)
  end

