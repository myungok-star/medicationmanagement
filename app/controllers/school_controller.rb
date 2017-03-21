class SchoolController < ApplicationController
  def index
    @schools = School.all
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

  private

  def school_params
        params.require(:school).permit(:name)
   end

end
