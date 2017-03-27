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
    med = Medication.find_by(medication_category_id: medication_params[:medication_category_id])
    if !med
        med = new Medication;
        med.quantity = 0;

    med.quantity += medication_params[:medication_quantity]
    med.save
    redirect_to all_schools_path
    end
  end

  private

  def medication_params
    params.require(:medication).permit(:school_id, :medication_category_id, :quantity)
  end

end
