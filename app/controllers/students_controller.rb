class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit]

  def index
    @students= Student.all
    @time = DateTime.now.strftime("%T")
  end

  def show
  end

  def new
    @student = Student.new
  end

  def edit
  end



  private

  def set_student
    begin
      @student = Student.find(params[:id])
    rescue
      redirect_to students_path, alert: "The student #{params[:id]} is not present."
    end
  end
end
