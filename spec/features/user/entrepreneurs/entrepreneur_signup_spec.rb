require 'rails_helper'
feature 'Entrepreneur visit home page and sign up' do
  scenario 'Successfully' do
    visit root_path
    click_on 'Sou Empreendedor'

    fill_in 'entrepreneur_name',      with: 'Entrepreneur'
    fill_in 'entrepreneur_email',     with: Faker::Internet.email
    fill_in 'entrepreneur_password',  with: Faker::Internet.password
    fill_in 'entrepreneur_bio',       with: Faker::Lorem.paragraph
    fill_in 'entrepreneur_telephone', with: Faker::PhoneNumber.phone_number

    click_on 'Criar Perfil'
p current_path
    within('.navbar') do
      expect(page).to have_content 'Entrepreneur'
      expect(page).not_to have_content 'Sou Empreendedor'
    end
  end

  scenario 'sign up fail' do
    visit root_path
    click_on 'Sou Empreendedor'

    click_on 'Criar Perfil'

    expect(page).to have_content('can\'t be blank')
  end

  scenario 'And Signout' do
  end
end
