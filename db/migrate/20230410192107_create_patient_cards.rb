class CreatePatientCards < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_cards do |t|
      t.string :number
      t.text :description
      t.references :clinic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
