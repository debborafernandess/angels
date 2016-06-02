class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.create(params.require(:project).permit(:name, market_ids: []))

    redirect_to market_path(@project.markets.first)
  end
end
