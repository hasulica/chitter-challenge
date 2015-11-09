require 'bcrypt'

class User

  attr_accessor :password_confirmation

  include BCrypt

  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :email, String
  property :password_hash, Text
  validates_confirmation_of :password

  def password=(new_password)
    self.password_hash = Password.create(new_password)
  end


  def self.authenticate(email, password)
    user = first(email: email)
    if user && Password.new(user.password_hash) == password
      user
    end
  end

end
