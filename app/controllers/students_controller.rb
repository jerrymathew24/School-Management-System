class StudentsController < ApplicationController
    before_action :authenticate_teacher!, only: [ :show]
  
    def show
      @student = Student.find(params[:id])
    end
  end
  