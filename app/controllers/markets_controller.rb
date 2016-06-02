class MarketsController < ApplicationController
  def index
  end
  
  def show
    @market = Market.find(params[:id])
  end

  private

  def market_params
    params.require(:market)
          .permit(:name, :projects)
  end
end
