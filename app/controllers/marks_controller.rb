class MarksController < ApplicationController
  before_action :set_mark, only: [:show, :edit, :update, :destroy]
  def index
    @marks = Mark.all
    # @tests = Test.all
    # @students = Student.all
  end
  def show
   @marks = Mark.find(params[:id])
  end
  def mark_test
    @mark_test = Mark.where(:student_id => student.id, :test_id => test.id).sum(:mark)
    # @mark_test = Mark.where(:student_id => s.id, :test_id => t.id).sum(:mark)
  end

  def set_mark
    @mark = Mark.find(params[:id])
  end
end
