class ModelQuestController < ApplicationController

def step1
end

def step2
  @students = Student.all
  @courses = Course.all


end

def step3
  @enrollments = Enrollment.all
end

def step4
   @students = Student.all
end

def step5
  @courses = Course.sorted_by_students_count

  @courses_groups = @courses.map { |course| { title: course.title, cnt: course.cnt } }
end
  
 def final
 
  end 
end