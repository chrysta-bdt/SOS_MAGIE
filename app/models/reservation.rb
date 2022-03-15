class Reservation < ApplicationRecord
  belongs_to :patient, class_name: 'User'
  belongs_to :service
end
