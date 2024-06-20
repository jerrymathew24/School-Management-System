# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  before_action :set_students

  private

  def set_students
    @students = Student.all  # Or any logic to fetch the students you want to display
  end
end
