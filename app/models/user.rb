class User < ActiveRecord::Base
  self.primary_key = 'username'
  has_many :offers, :foreign_key => :user_username, :primary_key => :username

  validates_presence_of :username
  validates_presence_of :password
  validates_presence_of :firstname
  validates_presence_of :lastname
  validates_presence_of :enabled
  validates_presence_of :email

  attr_accessor :remember_token

  def authenticate?(password)
    password.eql?self.password
  end

  # Returns the hash digest of the given string.
  def digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def new_token
    SecureRandom.urlsafe_base64
  end

  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = new_token
    update_attribute(:remember_digest, digest(remember_token))
  end

  # Returns true if the given token matches the digest.
  def authenticated?(remember_token)
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end
end
