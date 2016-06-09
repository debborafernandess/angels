require 'rails_helper'

feature 'Visitor access home page and view markets' do
  scenario 'successfully' do
    markets = create_list(:market, 10)

    visit root_path

    expect(page).to have_content('Angels')
    expect(page).to have_link('Investidor', href: new_investor_session_path)
    expect(page)
      .to have_link('Empreendedor',
                    href: new_entrepreneur_session_path)

    markets.each do |market|
      expect(page).to have_content(market.name)
    end
  end
end
