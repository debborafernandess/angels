require 'rails_helper'

feature 'visitor access market details' do
  scenario 'successfully' do
    projects = create_list(:project, 3)
    market = create(:market, projects: projects)

    visit market_path(market)

    expect(page).to have_css('h1', text: market.name)

    market.projects.each do |project|
      expect(page).to have_css('p', text: project.name)
    end
  end
end
