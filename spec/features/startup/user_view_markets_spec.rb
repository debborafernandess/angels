require 'rails_helper'

feature 'User access home page and view markets' do
  scenario 'successfully' do
    market = create(:market)
    market1 = create(:market)

    visit root_path

    expect(page).to have_content(market.name)
    expect(page).to have_content(market1.name)
  end
end
