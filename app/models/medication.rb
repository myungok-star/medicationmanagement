class Medication < ApplicationRecord
  belongs_to :school
  belongs_to :medication_category

  validates_presence_of :school_id, :medication_category_id, :quantity
end
