class Business < ApplicationRecord 
  validates :email, presence:true
  validates :name, presence:true
  validates :phone_number, presence:true
  validates_uniqueness_of :email
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
