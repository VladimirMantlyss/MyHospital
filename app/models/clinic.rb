class Clinic < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true

  def update(attributes)
    super
  end
end
