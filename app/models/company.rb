class Company < ApplicationRecord
  has_many :class_rooms, dependent: :destroy
  has_many :teachers, dependent: :destroy
  validates :name, presence: true
end
