class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)

    redirect_to market_path(@project.markets.first)
  end

  private

  def project_params
    params.require(:project).permit(:name, market_ids: [])
  end
end
