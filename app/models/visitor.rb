class Visitor < ApplicationRecord
  validates :email, presence:true
  validates_uniqueness_of :email
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
