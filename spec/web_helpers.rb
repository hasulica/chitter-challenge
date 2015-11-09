def sign_up
  click_button('Sign Up')
  fill_in :name, with: 'Radu'
  fill_in :email, with: 'radu@radu.com'
  fill_in :password, with: 'password'
  click_button('Sign Up')
end
