class CreateMedications < ActiveRecord::Migration[5.0]
  def change
    create_table :medications do |t|
      t.belongs_to :school
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end
