require 'rails_helper'
feature 'Entrepreneur visit home page and sign up' do
  scenario 'Successfully' do
    visit root_path
    click_on 'Empreendedor'
    click_on 'Sign up'

    fill_in 'entrepreneur_name',       with: 'Entrepreneur'
    fill_in 'entrepreneur_email',      with: Faker::Internet.email
    fill_in 'entrepreneur_password',   with: '12345678'
    fill_in 'entrepreneur_password_confirmation', with: '12345678'
    fill_in 'entrepreneur_bio',        with: Faker::Lorem.paragraph
    fill_in 'entrepreneur_telephone',  with: Faker::PhoneNumber.phone_number

    click_on 'Cadastrar'

    within('.entrepreneur-nav') do
      expect(page).to have_content 'Entrepreneur'
      expect(page).not_to have_content 'Empreendedor'
    end
  end

  scenario 'sign up fail' do
    visit root_path
    click_on 'Empreendedor'
    click_on 'Sign up'

    click_on 'Cadastrar'

    expect(page).to have_content('can\'t be blank')
  end

  scenario 'Sign out' do
    entrepreneur = create(:entrepreneur)

    visit root_path

    click_on 'Empreendedor'

    fill_in 'entrepreneur_email',     with: entrepreneur.email
    fill_in 'entrepreneur_password',  with: entrepreneur.password

    click_on 'Entrar'
    click_on 'Sair'

    expect(current_path).to eq root_path
    expect(page).not_to have_content entrepreneur.name
  end
end
