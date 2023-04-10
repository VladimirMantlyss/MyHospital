class CreateUsersView < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL
      CREATE OR REPLACE VIEW patient_view AS
        SELECT id, name, age, gender
        FROM patients;
    SQL
  end

  def down
    execute <<-SQL
      DROP VIEW IF EXISTS patient_view;
    SQL
  end
end