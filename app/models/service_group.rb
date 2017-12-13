class ServiceGroup < ApplicationRecord
  belongs_to :company

  validates :title, presence: true, length: {maximum: 50, minimum: 5}
end
