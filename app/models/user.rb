class User < ApplicationRecord
  has_secure_password

  has_many :medicines
  has_many :global_medicines, through: :medicines

  validates :fullname, presence: true
  validates :username, presence: true, uniqueness: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :shopname, presence: true
  validates :shopaddress, presence: true
  validates :district, presence: true
  validates :pincode, presence: true
  validates :features, presence: true
end
