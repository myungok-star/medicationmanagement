class MedicationCategoryController < ApplicationController

  def create
    @medication_category = MedicationCategory.new(params[:name])
        if @medication_category.save
            flash[:notice] = 'You have successfully created a new school!'
            redirect_to all_schools_path
        else
            flash[:error] = @medication_category.errors.full_messages.join(', ')
        end
  end
end
