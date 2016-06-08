require 'rails_helper'
feature 'Investor visit home page and signin' do
  scenario 'Successfully' do
    visit root_path

    investor = create(:investor)

    click_on 'Sou Investidor'

    click_on 'Sou Cadastrado'

    fill_in 'Email',      with: investor.email
    fill_in 'Senha',      with: investor.password

    click_on 'Entrar'

    expect(current_path).to eq(root_path)
    within('.navbar') do
      expect(page).to have_content investor.name
      expect(page).not_to have_content 'Sou Investidor'
    end
  end

  scenario 'And Signout' do
    visit root_path

    investor = create(:investor)

    click_on 'Sou Investidor'

    click_on 'Sou Cadastrado'

    fill_in 'Email',      with: investor.email
    fill_in 'Senha',      with: investor.password

    click_on 'Entrar'
    click_on 'Sair'

    expect(page).to have_content 'Sou Investidor'
  end
end
