class DoctorsView < ApplicationRecord
  self.table_name = "doctors"
  self.ignored_columns = %w[created_at updated_at]
  self.primary_key = 'id'

  def readonly?
    true
  end

  def self.custom_query
    find_by_sql("
      SELECT id, name
      FROM doctors
    ")
  end
end
