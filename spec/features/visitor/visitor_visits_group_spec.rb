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
