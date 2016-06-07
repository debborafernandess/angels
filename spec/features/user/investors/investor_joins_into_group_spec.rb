require 'rails_helper'

feature 'Inverstor joins into group' do
  scenario 'successfully' do
    group = create(:group)
    investor = create(:investor)
    login_as(investor, scope: :investor)

    visit group_path(group)

    expect{ click_on 'Inscrever-se' }.to change{ GroupsInvestor.count}.by(1)
  end

  scenario 'fail' do
    group = create(:group)
    visit group_path(group)

    click_on 'Inscrever-se'

    expect(page)
      .to have_content('Para fazer sua inscrição, você precisa estar logado')
  end

end
