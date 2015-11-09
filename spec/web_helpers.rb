def sign_up
  visit('/')
  click_button('Sign Up')
  fill_in :name, with: 'Radu'
  fill_in :email, with: 'radu@radu.com'
  fill_in :password, with: 'password'
  fill_in :password_confirmation, with: 'password'
  click_button('Sign Up')
end
