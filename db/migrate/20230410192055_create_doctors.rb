class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
