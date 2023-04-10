class PatientCard < ApplicationRecord
  belongs_to :clinic

  def update(attributes)
    super
  end
end
