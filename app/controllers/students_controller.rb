class StudentsController < ApplicationController

	def show
	end

	def index
		@students = Student.where("user_id = ?",current_user.id)
		@student = Student.new	
	end
end