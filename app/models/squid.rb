class Squid < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :name, :price, :description, :user_id, :photo, presence: true
end
