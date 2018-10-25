class StaticController < ApplicationController
  def index
    @students = Student.all
    @courses = Course.all
    @tests = Test.all
    # @marks = Marks.all
  end


  def weight_and_mark  
    @mark_test = Mark.where(:student_id => s.id, :test_id => t.id).sum(:mark)
    @weight_course =  Test.where(:course_id => c.id, :weight => t.weight, :id => t.id).sum(:weight) / 10 
    @weight_and_mark = (@mark_test * @weight_course) 
  end
end
