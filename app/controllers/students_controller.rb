class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
    @marks = Mark.where(:student_id => 1, :test_id => 1).sum(:mark)
    # @marks.test_id = @test.id
    @tests = Test.all
  end

  def show
    
  end
  def edit
  end

  def create
    @student = Student.new(student_params)
    @student.student_id = current_student.id

    if @student.save
      redirect_to @student, notice: 'Student was created successfully'
    else
      render :new
    end
  end
  def student_params
    params.require(:student).permit(:id, :name)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
