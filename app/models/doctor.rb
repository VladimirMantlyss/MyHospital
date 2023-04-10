class Doctor < ApplicationRecord
  belongs_to :department

  def update(attributes)
    super
  end
end
