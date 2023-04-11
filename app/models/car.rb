class Car < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy

  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :model, presence: true, length: { minimum: 3, maximum: 100 }
  validates :price, presence: true
  validates :image_url, presence: true, length: { minimum: 3, maximum: 10_000 }
  validates :description, presence: true, length: { minimum: 3, maximum: 10_000 }
  validates :user_id, presence: true
end
