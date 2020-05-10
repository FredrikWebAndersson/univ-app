class Course < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5, maximum: 30 }
  validates :description, presence: true, length: { minimum: 25, maximum: 250 }
  validates :code_name, presence: true, length: { minimum: 3, maximum: 6 }
  has_many :student_courses 
  has_many :students, through: :student_courses
end