class Student < ApplicationRecord
  has_many :marks
  has_many :tests 
  has_many :courses



end
