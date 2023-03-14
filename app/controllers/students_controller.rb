class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.order('grade')
        render json:students
    end

    def highest_grade
        max_grade = Student.maximum(:grade)
        highest_student = Student.find_by(grade: max_grade)
        render json: highest_student
    end
end
