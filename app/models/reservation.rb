class Reservation < ApplicationRecord
  belongs_to :patient, class_name: 'User'
  belongs_to :service

  validates :rental_date, :return_date, presence: true
end
