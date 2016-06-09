require 'rails_helper'

feature 'visitor access market details' do
  scenario 'When there\'s no group registered yet' do
    market = create(:market)

    visit root_path
    click_on market.name

    expect(page)
      .to have_css('p', text: 'Seja o 1º a criar um grupo nesse segmento')
  end

  scenario 'and view groups from market' do
    market = create(:market)
    groups = create_list(:group, 10, market: market)

    visit root_path

    click_on market.name

    expect(page).to have_link('Novo Grupo')

    groups.each do |group|
      within("#group_#{group.id}") do
        expect(page).to have_content group.name
        expect(page).to have_content group.projects.count
      end
    end
  end
end
