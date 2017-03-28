class SchoolController < ApplicationController
  def index
    @medications = Medication.all
    @schools = School.all
    @medication_categories = MedicationCategory.all
  end

  def create
    @school = School.new(school_params)
        if @school.save
            flash[:notice] = 'You have successfully created a new school!'
            redirect_to all_schools_path
        else
            flash[:error] = @school.errors.full_messages.join(', ')
        end
  end

  def show
    @school = School.find_by_id(params[:id])
    @medications = Medication.where(school_id: @school.id)
    # @medication_categories = @medications.medication_category_id
  end

  private

  def school_params
        params.require(:school).permit(:name)
  end

end
