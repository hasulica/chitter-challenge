require 'spec_helper'

feature 'log in' do
  scenario 'log in when already signed up' do
    sign_up
    visit('/sessions/new')
    fill_in :email, with: 'radu@radu.com'
    fill_in :password, with: 'password'
    click_button('Log In')
    expect(page).to have_content('Welcome, Radu!')
    end
end
