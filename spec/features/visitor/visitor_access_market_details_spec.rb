require 'rails_helper'

feature 'visitor access market details' do
  scenario 'successfully' do
    market = create(:market)
    visit market_path(market)

    expect(page).to have_css('h1', text: market.name)
  end
end
