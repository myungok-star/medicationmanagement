class AddImageToMedicationCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :medication_categories, :image, :string
  end
end
