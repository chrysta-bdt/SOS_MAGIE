class Service < ApplicationRecord
  belongs_to :witch, class_name: 'User'
  has_many :reservations
end
