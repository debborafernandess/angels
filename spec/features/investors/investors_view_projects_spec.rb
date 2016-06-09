require 'rails_helper'
feature 'user view my groups' do
  scenario 'successfully' do

    investor = create(:investor)
    market = create(:market)
    group = create(:group, market: market, investors: [investor])
    group2 = create(:group, market: market, name: 'banana')
    login_as(investor, scope: :investor)

    visit root_path

    click_on 'Meus Grupos'

    expect(current_path).to eq groups_path
    expect(page).to have_content group.name
    expect(page).not_to have_content group2.name

  end
end
