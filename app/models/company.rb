class Company < ApplicationRecord
  belongs_to :user
  has_many :service_groups

  validates :name, presence: true
  validates :description, presence: true, length: {maximum: 280, minimum: 100}
  validates :address, presence: true
  validates :phone, presence: true
  validates :email, presence: true
end
