require 'rails_helper'
feature 'User login' do
  scenario 'successfully' do
    user = create(:user)

    visit root_path

    click_on 'Log In'

    fill_in 'user_email',      with: user.email
    fill_in 'user_password',   with: user.password

    click_on 'Log in'

    expect(page).to have_content(user.fullname)
  end
  scenario 'Fail' do

    visit root_path

    click_on 'Log In'

    click_on 'Log in'

    expect(current_path).to eq(new_user_session_path)

  end
end
