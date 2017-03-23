class MedicationController < ApplicationController
  def new
    @schools = School.all
    @medications = Medication.all
    @medication_categories = MedicationCategory.all
  end

  def update_med
    @schools = School.all
    @medications = Medication.all
    @medication_categories = MedicationCategory.all
    med = Medication.find_by(medication_params)
    med.update_attributes(medication_params)
    redirect_to all_medications_path
  end

  private

  def medication_params
        params.require(:medication).permit(:school_id, :medication_category_id, :quantity)
   end

end
