class StudentsController < ApplicationController

  def index
    @students= Student.all
    @time = DateTime.now.strftime("%T")
  end

  def show
    @student = Student.find(params[:id])
  end
end
