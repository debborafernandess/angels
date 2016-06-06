require 'rails_helper'

feature 'User access home page and view markets' do
  scenario 'successfully' do
    markets = create_list(:market, 10)

    visit root_path

    markets.each do |market|
      expect(page).to have_content(market.name)
    end
  end
end
