class MedicationController < ApplicationController
    def new
        @schools = School.all
        @medication_categories = MedicationCategory.all
    end

    def update_med
        med = Medication.find_by(medication_category_id: medication_params[:medication_category_id], school_id: medication_params[:school_id])
        if med.nil?
            med = Medication.new(medication_category_id: medication_params[:medication_category_id], school_id: medication_params[:school_id], quantity: 0)
        end
        med.quantity += medication_params[:quantity].to_i
        if med.save
          flash[:notice] = 'You have successfully added a new medication!'
          redirect_to school_info_path(medication_params[:school_id])
        else
          redirect_to new_medication_path
          flash[:notice] = "Please fill out the entire form."
        end
    end

    private

    def medication_params
        params.require(:medication).permit(:school_id, :medication_category_id, :quantity)
    end
end
