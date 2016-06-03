require 'rails_helper'

feature 'user create project' do
  scenario 'successfully' do
    market = create(:market)
    name = 'bosta'
    visit new_project_path

    fill_in 'project_name', with: name
    check market.name

    click_on 'Cadastrar Projeto'

    expect(page).to have_content market.name
    expect(page).to have_content name
  end
end
