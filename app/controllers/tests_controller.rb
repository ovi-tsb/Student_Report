class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]
  def index
    @tests = Test.all
    # @marks = Mark.where(:student_id => 1, :test_id => 1).sum(:mark)
    
    
    @students = Student.all

    # @weight_course =  Test.where(:course_id => c.id, :weight => t.weight, :id => t.id).sum(:weight) / 10
    # @mark_test = Mark.where(:student_id => s.id, :test_id => t.id).sum(:mark)
    # @weight_and_mark = (@mark_test * @weight_course).to_f
    
  end

  def weight_course
    @weight_course =  Test.where(:course_id => course.id, :weight => test.weight, :id => test.id).sum(:weight) / 10
    # @weight_course =  Test.where(:course_id => c.id, :weight => t.weight, :id => t.id).sum(:weight) / 10 
  end

  def test_params
    params.require(:test).permit(:id, :course_id, :student_id)
  end

  def set_test
    @test = Test.find(params[:id])
  end
end
