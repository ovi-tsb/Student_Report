class Course < ApplicationRecord
  belongs_to :students, optional: true
end
