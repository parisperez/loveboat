class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true

  has_many :favorites
  has_secure_password
  has_many :received_exchanges,
  :class_name => 'Exchange',
  :primary_key => 'user_id',
  :foreign_key => 'vendor_id'
end