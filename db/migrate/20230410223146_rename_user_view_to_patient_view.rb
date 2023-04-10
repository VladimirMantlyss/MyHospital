class RenameUserViewToPatientView < ActiveRecord::Migration[7.0]
  def change
    rename_table :user_views, :patient_views
  end
end
