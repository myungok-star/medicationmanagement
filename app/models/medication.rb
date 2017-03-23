class Medication < ApplicationRecord
  belongs_to :school
  belongs_to :medication_category
end
