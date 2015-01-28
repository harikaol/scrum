class ProjectsController < ApplicationController
  def index
    @projects=Project.all
    @project=Project.new
  end

  def new
    @project= Project.new
  end

  def create
    @project = Project.new(project_params)

    @project.status = 'Created'
    if @project.save
      redirect_to projects_path
    else
      render 'new'
    end
  end
  def show
    @project= Project.find(params[:id])
    @subproject = Subproject.new
    @subproject.project_id = @project.id
  end
  def edit
    @project=Project.find(params[:id])
  end
  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to projects_path
    else
      render "edit"
    end
  end
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end
  def terminate
    @project=Project.find(params[:id])
  end
  def close
    @project=Project.find(params[:id])
  end
  def view
    @project=Project.find(params[:id])
  end
  def abondoned
    @project=Project.find(params[:id])
  end
  def suspend
    @project=Project.find(params[:id])
  end
  def project_params
    params.require(:project).permit(:project_name,:client,:description,:complexity,:priority,:date_received,:category, :volume,:primary_owner,:constraints,:date_of_starting,:expected_date_of_completion,:closing_comments,:closing_date,:status,:reason_for_abondoned,:reason_for_suspending,:suspended_date,:trigger_date,:comments)
  end
end
