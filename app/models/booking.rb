class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :squid

  validates :user, :squid, :rent_date, :status, presence: true
  validates :rent_date, uniqueness: true
end
