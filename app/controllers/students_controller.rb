class StudentsController < ApplicationController
  before_action :get_student, only: [:show, :edit, :update]
  skip_before_action :require_user, only: [:new, :edit, :create]
  before_action :require_current_user, only: [:edit, :update]
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
      session[:student_id] = @student.id
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

  def require_current_user
    if current_user != @student 
      flash[:notice] = "You can only edit your own profile"
      redirect_to student_path(current_user)
    end
  end

end
