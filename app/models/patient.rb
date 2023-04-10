class Patient < ApplicationRecord
  belongs_to :patient_card

  def update(attributes)
    super
  end
end
