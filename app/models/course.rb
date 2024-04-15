# frozen_string_literal: true

class Course < ApplicationRecord
  has_many :enrollments
  has_many :students, through: :enrollments
end