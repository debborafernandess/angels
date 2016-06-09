require 'rails_helper'
feature 'Entrepreneur submit project' do
  scenario 'Successfully' do
    entrepreneur = create(:entrepreneur)
    market = create(:market)
    group = create(:group, market: market)
    project = build(:project)

    visit root_path
    login_as(entrepreneur, scope: :entrepreneur)

    click_on market.name
    click_on group.name

    fill_in 'Nome',         with: project.name
    fill_in 'Publico Alvo', with: project.target
    fill_in 'Descrição',    with: project.description
    fill_in 'Parceiros',    with: project.partner

    click_on 'Cadastrar Projeto'

    within('#projects') do
      expect(page).to have_content(project.name)
      expect(page).to have_content(project.description)
      expect(page).to have_content(project.target)
    end
  end

  scenario 'without required fields' do
    entrepreneur = create(:entrepreneur)
    market = create(:market)
    group = create(:group, market: market)
    project = build(:project)

    visit root_path
    login_as(entrepreneur, scope: :entrepreneur)

    click_on market.name
    click_on group.name

    click_on 'Cadastrar Projeto'

    expect(page).to have_content 'Campos obrigatórios não preenchidos'
  end
end