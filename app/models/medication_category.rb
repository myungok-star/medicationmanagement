class MedicationCategory < ApplicationRecord
    validates :name, presence: true
end
