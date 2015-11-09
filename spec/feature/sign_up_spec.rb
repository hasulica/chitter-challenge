require 'spec_helper'

feature 'signing up new user' do
  scenario 'signing up for chitter' do
    visit('/')
    click_button('Sign Up')
    fill_in :name, with: 'Radu'
    fill_in :email, with: 'radu@radu.com'
    fill_in :password, with: 'password'
    fill_in :password_confirmation, with: 'password'
    click_button('Sign Up')
    expect(page).to have_content('Welcome, Radu!')
    end
end
