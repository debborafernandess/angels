require 'rails_helper'

feature 'Visitor visits Home' do
  scenario 'and see main info' do
    visit root_path

    expect(page).to have_link('Anjo', href: '#angel')
    expect(page).to have_link('Startup', href: '#startup')
  end

  scenario '#angel details' do
    visit root_path

    within('#angel') do
      expect(page).to have_css('p', text: 'Lorem Ipsum dolor amet')
      expect(page).to have_link('Mais', href: markets_path)
    end
  end

  scenario '#startup details' do
    visit root_path

    within('#startup') do
      expect(page).to have_css('p', text: 'Lorem Ipsum dolor amet')
      expect(page).to have_link('Mais', href: markets_path)
    end
  end
end
