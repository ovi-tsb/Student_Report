class Test < ApplicationRecord
  has_many :students
  has_many :courses

  attr_accessor :student_id
end
