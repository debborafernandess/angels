require 'rails_helper'
feature 'Investors Signup' do
  scenario 'successfully' do

    visit root_path

    click_on 'Sou Investidor'

    fill_in 'Apelido',                  with: 'Zardini'
    fill_in 'Nome',                     with: 'Bruno'
    fill_in 'Email',                    with: 'mail@mail.com'
    fill_in 'Senha',                    with: 'banana', match: :prefer_exact
    fill_in 'Confirmar Senha',           with: 'banana'
    fill_in 'Bio',                      with: 'Meu Nome é Bruno'
    fill_in 'Minimo de Investimento',   with: 100
    fill_in 'Maximo de Investimento',   with: 2.000

    click_on 'Criar Perfil'

    expect(current_path).to eq(root_path)
    within('.navbar') do
      expect(page).to have_content 'Bruno'
    end

  end
end
