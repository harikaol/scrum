class SubprojectsController < ApplicationController
  def index
    @subprojects=Subproject.all
  end
  def new
    @subproject=Subproject.new
  end
  def create
    @subproject = Subproject.new(subproject_params)
    @subproject.project_id = params[:project_id]
    if @subproject.save
      redirect_to projects_path
    else
      render 'new'
    end
  end
  def show
    @subproject=Subproject.find(params[:id])
  end
  def edit
    @subproject=Subproject.find(params[:id])
  end
  def update
    @subproject =Subproject.find(params[:id])
    if @subproject.update(subproject_params)
      redirect_to subprojects_path
    else
      render "edit"
    end
  end
  def view
    @subproject=Subproject.find(params[:id])
  end
  def subproject_params
    params.require(:subproject).permit(:subproject_name,:subproject_description,:primary_owner,:constraints,:date_of_starting,:expected_date_of_completion,:status,:project_id)
  end
end
