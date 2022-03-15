class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :services, foreign_key: 'witch_id'
  has_many :reservations, foreign_key: 'patient_id'
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :email, :password, presence: true
  validates :email, length: { minimum: 6 }
end
