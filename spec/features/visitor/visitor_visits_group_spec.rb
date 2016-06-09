require 'rails_helper'
feature 'Visitor view group' do
  scenario 'Successfully' do
    market = create(:market)
    group  = create(:group, market: market)

    visit root_path

    click_on market.name
    click_on group.name

    expect(page).to have_css('h1', text: group.name)
  end

  scenario 'and view projects' do
    market   = create(:market)
    group    = create(:group, market: market)
    projects = create_list(:project, 10, group: group)

    visit group_path(group)

    expect(page).to have_css('h1',     text: group.name)
    expect(page).to have_css('footer', text: group.description)
    expect(page).to have_css('footer', text: 'Investidores')
    expect(page).to have_link('Inscrever-se', href: join_group_path(group))

    projects.each do |project|
      expect(page).to have_css('dt', text: project.name)
      expect(page).to have_css('dd', text: project.description)
      expect(page).to have_css('dt', text: 'Público alvo')
      expect(page).to have_css('dd', text: project.target)
      expect(page).to have_css('dt', text: 'Parceiros')
      expect(page).to have_css('dd', text: project.partner)
    end
  end
end
