require 'rails_helper'

feature 'visitor access market details' do
  scenario 'successfully' do
    market = create(:market)

    visit root_path

    click_on market.name

    expect(page).to have_css('h1', text: market.name)
  end

  scenario 'and view groups from the market' do
    market = create(:market)
    groups = create_list(:group, 10, market: market)

    visit root_path

    click_on market.name

    groups.each do |group|
      expect(page).to have_content group.name
    end
  end
end
