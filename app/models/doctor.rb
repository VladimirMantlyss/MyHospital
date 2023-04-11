class Doctor < ApplicationRecord
  belongs_to :department, class_name: 'Department', foreign_key: 'department_id'
end
