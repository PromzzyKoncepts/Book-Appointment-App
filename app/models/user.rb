class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :cars, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_one_attached :person_image

  validates :name, presence: true, length: { minimum: 5, maximum: 100 }
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 6 }
end
