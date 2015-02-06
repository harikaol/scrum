class IssuesController < ApplicationController
  def index
    @issues = Issue.all
  end
  def new
    @issue=Issue.new
  end
  def create
    @issue = Issue.new(add_issue_params)
    # @issue.project_id = params[:project_id]
    # @issue.subproject_id=params[:subproject_id]
    
     # @issue.task_id=params[:task_id]
    # @task.subproject_name = @subproject.subproject_name
    p @issue.task_id
    if @issue.save
      redirect_to tasks_path
    else
      render 'new'
    end
  end
  def show
    @issue=Issue.find(params[:id])
  end
  def edit
    @issue=Issue.find(params[:id])
  end
  def update
    @issue =Issue.find(params[:id])
    if @issue.update(add_issue_params)
      redirect_to issues_path
    else
      render "edit"
    end
  end
  def view
    @issue=Issue.find(params[:id])
  end
  def add_issue_params
    params.require(:issue).permit(:project_id,:project_name,:subproject_id,:subproject_name,:task_id,:task_name,:status,:issue_description,:resolution)
  end 
end
