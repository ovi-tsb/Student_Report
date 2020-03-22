class Mark < ApplicationRecord
  belongs_to :students, optional: true
  belongs_to :tests, optional: true
  belongs_to :courses, optional: true
  # attr_accessible :course_id
end
