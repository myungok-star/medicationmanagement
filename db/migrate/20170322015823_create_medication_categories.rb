class CreateMedicationCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :medication_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
