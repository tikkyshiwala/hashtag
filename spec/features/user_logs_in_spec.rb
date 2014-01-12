require 'spec_helper'

feature 'User logs in' do
  scenario 'logs in successfully' do
    user = create(:user)
    visit root_url
    click_on 'Log in'
    fill_in 'Username', with: user.email 
    fill_in 'Password', with: 'password' 
    click_on 'Submit'

    expect(page).to have_content 'Logged in as'
  end

  scenario 'does not log in successfully' do
    user = create(:user)
    visit root_url
    click_on 'Log in'
    fill_in 'Username', with: user.email 
    fill_in 'Password', with: 'wrong_password' 
    click_on 'Submit'

    expect(page).not_to have_content 'Logged in as'
  end
end
