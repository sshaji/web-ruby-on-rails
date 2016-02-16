class Offer < ActiveRecord::Base
  self.primary_key = 'id'
  belongs_to :user, :foreign_key => :user_username, :primary_key => :username

  validates :user_username, presence: true
  validates :offerdetails, presence: true,
            length: {minimum: 3, maximum: 250}
end
