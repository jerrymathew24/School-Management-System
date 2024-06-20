class StudentsController < ApplicationController
    before_action :authenticate_teacher!, only: [:index, :show]
  
    def index
      @students = Student.all
    end
  
    def show
      @student = Student.find(params[:id])
    end
  end
  