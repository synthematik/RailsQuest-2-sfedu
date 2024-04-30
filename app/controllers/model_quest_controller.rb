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
  @courses_group = []
  Course.all.each do |course|
    @courses_group << {:title => course.title, :cnt => course.cnt}
  end

  @courses_group.sort_by!{|elem| elem[:cnt]}
  # @courses_group.sort_by! {
  # |course| course['cnt']
  # }
end
  
 def final
 
  end 
end