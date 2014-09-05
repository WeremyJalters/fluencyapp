class StudentsController < ApplicationController

	def show
		@student = Student.find(params[:id])
		@lesson = Lesson.new
	end

	def index
		@students = Student.where("user_id = ?",current_user.id)
		@student = Student.new	
	end

	def create
		student = Student.new(student_parameters)
		student.user_id = current_user.id
		if student.save
			redirect_to student
	    else
	    	redirect_to 'students#index'
	    end
	end


	private

	def student_parameters
		params.require(:student).permit(:first_name, :last_name)
	end





end