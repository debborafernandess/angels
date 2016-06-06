class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def create
    @group = Group.create(params_group)
    redirect_to @group
  end

  def show
    @group = Group.find(params[:id])
  end

  private

  def params_group
    params
      .require(:group)
      .permit(:name, :description, :market_id, investor_ids: [])
  end
end
