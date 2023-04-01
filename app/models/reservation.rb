class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :city, presence: true, length: { minimum: 3, maximum: 100 }
  validates :date, presence: true
  validates :car_id, presence: true
  validates :user_id, presence: true
end
