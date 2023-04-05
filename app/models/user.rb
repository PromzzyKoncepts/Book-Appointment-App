class User < ApplicationRecord
  has_secure_password
  has_many :cars, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_one_attached :person_image

  validates :name, presence: true, length: { minimum: 5, maximum: 100 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
end
