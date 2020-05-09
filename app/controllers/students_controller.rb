class StudentsController < ApplicationController
  before_action :get_student, only: [:show, :edit, :update]
  
  def index
    @students = Student.all
  end

  def show
  end 

  def new 
    @student = Student.new
  end 

  def create 
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = "Account successfully created"
      redirect_to student_path(@student.id)
    else
      render "new"
    end
  end 

  def edit
  end
  
  def update
    if @student.update(student_params)
      flash[:notice] = "Your profile was successfully updated."
      redirect_to @student
    else
      render "edit"
    end
  end

  private 

  def get_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :email, :password, :password_confirmation)
  end

end
