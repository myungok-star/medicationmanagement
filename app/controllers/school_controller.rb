class SchoolController < ApplicationController
    def index
        @medications = Medication.all
        @schools = School.all
        @medication_categories = MedicationCategory.all
    end

    def create
        @school = School.new(school_params)
        if @school.save
            redirect_to all_schools_path
        end    
    end

    def show
        @school = School.find_by_id(params[:id])
        @medications = Medication.where(school_id: @school.id)
    end

    private

    def school_params
        params.require(:school).permit(:name)
    end
end
