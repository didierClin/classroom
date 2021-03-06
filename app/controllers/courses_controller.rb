class CoursesController < ApplicationController
    before_action :set_course, only: [:show, :update]
  def index
    @courses = Course.all
  end

  def show
    # fail
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to @course
    else
      render 'new'
    end
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
