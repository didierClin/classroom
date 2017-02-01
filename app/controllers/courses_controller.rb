class CoursesController < ApplicationController
    before_action :set_course, only: [:show, :update]
  def index
    @courses = Course.all
  end

  def show
    # fail
  end

  def new
  end

  def create

  end

  def update
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:field, :teacher)
  end
end
