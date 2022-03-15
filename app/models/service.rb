class Service < ApplicationRecord
  belongs_to :witch, class_name: 'User'
  has_many :reservations

  CATEGORIES = %w[love theft conflict money]

  validates :name, :category, :description, :price, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
