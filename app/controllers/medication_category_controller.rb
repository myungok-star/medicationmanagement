class MedicationCategoryController < ApplicationController

  def create
    @medication_category = MedicationCategory.new(medication_category_params)
        if @medication_category.save
            flash[:notice] = 'You have successfully created a new medication type!'
            redirect_to all_schools_path
        end
  end

  private

  def medication_category_params
        params.require(:medication_category).permit(:name)
  end
end
