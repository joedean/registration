class Company < ApplicationRecord
  has_many :class_rooms, dependent: :destroy
  validates :name, presence: true
end
