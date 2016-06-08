class GroupsController < ApplicationController
  before_action :authenticate_investor!
  before_action :set_group, only: [:show, :join]

  def index
    @groups = Group.all
  end

  def new
    @market = Market.find(params[:market_id])
    @group = @market.groups.new
  end

  def create
    @market = Market.find(params[:market_id])
    @group = @market.groups.new(params_group)
    if @group.save
      redirect_to group_path(@group)
    else
      render :new
    end
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
