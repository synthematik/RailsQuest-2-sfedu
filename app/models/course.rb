# frozen_string_literal: true

class Course < ApplicationRecord
  has_many :enrollments
  has_many :students, through: :enrollments

  def self.sorted_by_students_count
    joins(:enrollments)
      .select('courses.title, COUNT(DISTINCT enrollments.student_id) AS cnt')
      .group('courses.id')
      .order('cnt ASC')
  end
end