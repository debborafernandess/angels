class MarketsController < ApplicationController
  def index
    @markets = Market.order(:name)
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
