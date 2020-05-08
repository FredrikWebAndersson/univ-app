class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
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
    @student = Student.find(params[:id])
  end
  
  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      flash[:notice] = "Your profile was successfully updated."
      redirect_to @student
    else
      render "edit"
    end
  end

  private 

  def student_params
    params.require(:student).permit(:name, :email)
  end

end
