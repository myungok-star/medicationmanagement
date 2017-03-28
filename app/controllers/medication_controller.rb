class MedicationController < ApplicationController
    def new
        @schools = School.all
        @medication_categories = MedicationCategory.all
    end

    def update_med
        med = Medication.find_by(medication_category_id: medication_params[:medication_category_id], school_id: medication_params[:school_id])
        med.quantity += medication_params[:quantity].to_i
        if med.nil?
            med = Medication.new(medication_category_id: medication_params[:medication_category_id], school_id: medication_params[:school_id], quantity: 0)
        end
        if med.save
        redirect_to school_info_path(medication_params[:school_id])
        end
    end

    private

    def medication_params
        params.require(:medication).permit(:school_id, :medication_category_id, :quantity)
    end
end
