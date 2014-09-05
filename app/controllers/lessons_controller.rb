class LessonsController < ApplicationController
	def show
		@lesson = Lesson.new
		@books = Book.where(student_id: params[:id])
        @book = Book.new  
        #@student = Student.find(params[:id])
        @lessons = Lesson.where(student_id: params[:id])

	end

    def index
    	 @lessons = Lesson.where("user_id = ?",current_user.id)
    end

	def create
		@lesson = Lesson.new(lesson_params)
		respond_to do |format|
      if @lesson.save
        format.html { redirect_to student_lesson_path(params[:lesson][:student_id] , @lesson.id), notice: 'You have created a lesson' }
        format.json { render :show, status: :created, location: @lesson }
      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @lesson = Lesson.new
    @book = Book.new
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:student_id, :note, :present, :cal_date, :lesson_number )
    end
	
end
    