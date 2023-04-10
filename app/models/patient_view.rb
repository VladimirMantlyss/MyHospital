class PatientView < ApplicationRecord
  self.table_name = "patients"
  self.ignored_columns = %w[created_at updated_at]
  self.primary_key = 'id'

  def readonly?
    true
  end

  def self.custom_query
    find_by_sql("
      SELECT id, name
      FROM patients
    ")
  end
end
