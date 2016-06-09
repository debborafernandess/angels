class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :join]
  def index
    @groups = Group.joins(:groups_investors)
                   .where(groups_investors:
                          { investor_id: current_investor.id })
  end

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.create(params_group)
    redirect_to @group
  end


  def show
    @group = Group.find(params[:id])
    @project = @group.projects.build
  end

  def join
    if current_investor
      @group.groups_investors.create(investor: current_investor)
    else
      flash[:notice] = 'Para fazer sua inscrição, você precisa estar logado'
    end
    redirect_to @group
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def params_group
    params
      .require(:group)
      .permit(:name, :description, :market_id, investor_ids: [])
  end
end
