require 'rails_helper'
feature 'Investor visit home page and signin' do
  scenario 'Successfully' do
    investor = create(:investor)

    visit root_path

    click_on 'Investidor'

    fill_in 'Email',      with: investor.email
    fill_in 'Senha',      with: investor.password

    click_on 'Entrar'

    expect(current_path).to eq(root_path)
    within('.navbar') do
      expect(page).to have_content investor.name
      expect(page).not_to have_content 'Investidor'
    end
  end

  scenario 'And Signout' do
    visit root_path

    investor = create(:investor)

    click_on 'Investidor'

    fill_in 'Email',      with: investor.email
    fill_in 'Senha',      with: investor.password

    click_on 'Entrar'
    click_on 'Sair'

    expect(page).to have_content 'Investidor'
  end
end
