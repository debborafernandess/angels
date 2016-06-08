require 'rails_helper'
feature 'Entrepreneur submit project' do
  scenario 'Successfully' do

    market = create(:market)
    group = create(:group, market: market)
    project = build(:project)

    visit root_path

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

  scenario 'Entrepreneur view many projects' do

    market = create(:market)
    group = create(:group, market: market)
    projects = create_list(:project, 10, group: group)

    visit root_path

    click_on market.name
    click_on group.name

    expect(page).to have_css('h1', text: group.name)

    projects.each do |project|
      expect(page).to have_css('h2', text: project.name)
      expect(page).to have_content(project.description)
      expect(page).to have_content(project.target)
    end
  end
end
