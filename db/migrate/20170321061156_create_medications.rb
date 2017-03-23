class CreateMedications < ActiveRecord::Migration[5.0]
  def change
    create_table :medications do |t|
      t.belongs_to :school
      t.belongs_to :medication_category
      t.integer :quantity

      t.timestamps
    end
  end
end
