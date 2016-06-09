require 'rails_helper'
feature 'Entrepreneur submit project' do
  scenario 'Successfully' do
    entrepreneur  = create(:entrepreneur)
    market        = create(:market)
    group         = create(:group, market: market)
    project       = build(:project)

    visit root_path
    login_as(entrepreneur, scope: :entrepreneur)

    visit group_path(group)

    fill_in 'project_name',         with: project.name
    fill_in 'project_target',       with: project.target
    fill_in 'project_description',  with: project.description
    fill_in 'project_partner',      with: project.partner

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
    visit group_path(group)

    click_on 'Cadastrar Projeto'

    expect(page).to have_content 'Campos obrigatórios não preenchidos'
  end
end
