require 'rails_helper'
feature 'Entrepreneur submit project' do
  scenario 'Successfully' do

    market = create(:market)
    group = create(:group, market: market)
    project = build(:project)

    visit root_path

    click_on market.name
    click_on group.name

    fill_in 'Nome',       with: project.name
    fill_in 'Descrição',   with: project.description
    fill_in 'Publico Alvo'with: project.target
    fill_in 'Parceiros' with: project.partner


    click_on 'Enviar'
    within('#projects') do
    expect(page).to have_content project.name
    end
  end
end
