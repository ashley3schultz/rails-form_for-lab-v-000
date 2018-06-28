class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:first_name).require(:last_name, :last_name))
    redirect_to school_class_path(@student)
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@student)
  end

end
