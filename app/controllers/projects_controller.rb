class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @group = Group.find(params[:group_id])
    @project = @group.projects.create(project_params)
    redirect_to @project.group
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :partner, :target)
  end
end
