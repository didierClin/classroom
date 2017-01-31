class StudentsController < ApplicationController

  def index
    @students= Student.all
    @time = DateTime.now.strftime("%T")
  end

  def show
    begin
      @student = Student.find(params[:id])
    rescue
      redirect_to students_path, notice: "The student you're looking for is not on ours lists."
    end
  end

  def new
    @student = Student.new
  end
end
