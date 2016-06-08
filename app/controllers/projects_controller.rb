class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @group = Group.find(params[:group_id])
    @project = @group.projects.new(project_params)
    if @project.save
      redirect_to @project.group
    else
      flash[:alert] = 'Campos obrigatórios não preenchidos'
      render 'groups/show'
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :partner, :target)
  end
end
