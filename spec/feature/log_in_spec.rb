require 'spec_helper'

feature 'log in' do
  scenario 'log in when already signed up' do
    sign_up
    click_button('Log In')
    fill_in :name, with: 'Radu'
    fill_in :password, with: 'password'
    click_button('Log In')
    expect(page).to have_content('Welcome, Radu!')
    end
end
