class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    find_student = Student.find_by(id: params[:id])
    render json: find_student
  end
end
