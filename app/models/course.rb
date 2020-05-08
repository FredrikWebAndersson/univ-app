class Course < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5, maximum: 30 }
  validates :description, presence: true, length: { minimum: 25, maximum: 250 }
  validates :code_name, presence: true, length: { minimum: 3, maximum: 6 }
end