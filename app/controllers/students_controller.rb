class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]

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

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def update
    if @student.update(student_params)
      redirect_to @student
    else
      render 'edit'
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :avatar, :course_id)
  end

  def set_student
    begin
      @student = Student.find(params[:id])
    rescue
      redirect_to students_path, alert: "The student #{params[:id]} is not present."
    end
  end
end
