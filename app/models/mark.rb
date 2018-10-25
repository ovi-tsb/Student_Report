class Mark < ApplicationRecord
  belongs_to :students
  belongs_to :tests
  belongs_to :courses
  # attr_accessible :course_id
end
