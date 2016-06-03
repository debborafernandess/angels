require 'rails_helper'

feature 'user create a group and join into' do
  scenario 'successfully' do
    market = create(:market)

    visit market_path(market)
    click_on 'Criar Grupo'

    fill_in 'group_name',         with: 'Bootcampers'
    fill_in 'group_description',  with: 'Lorem ipsum'
    select market.name

    click_on 'Cadastrar'

    expect(page).to have_css('h1', text: 'Bootcampers')
    expect(page).to have_css('p', text: 'Lorem ipsum')
    expect(page).to have_css('p', text: market.name)
  end
end
