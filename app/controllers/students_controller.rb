class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades 
        student = Student.order(grade: :desc)
        render json: student
    end
end
