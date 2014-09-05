class Student < ActiveRecord::Base
	belongs_to :user
	has_many :lessons
	has_many :books
	 
end
