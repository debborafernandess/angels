require 'rails_helper'
feature 'User signs up' do
  scenario 'successfully' do

    visit root_path

    click_on 'Sign Up'

    fill_in 'user_email',      with: 'mail@mail.com'
    fill_in 'user_password',   with: 'skjfkjskjf'
    fill_in 'user_fullname',   with: 'Debora fernandes'

    click_on 'Sign up'

    expect(page).to have_css('li.dropdown', text: 'Debora fernandes')
  end
  scenario 'Fail' do

    visit root_path

    click_on 'Sign Up'

    click_on 'Sign up'

    expect(page).to have_content 'can\'t be blank'

  end
end
