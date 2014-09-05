class Book < ActiveRecord::Base
	belongs_to :student

  def accuracy
  	(self.total_words.to_f - self.words_wrong.to_f)/self.total_words.to_f
   end

  def scrate
  	self.self_corrections.to_f/(self.self_corrections.to_f + self.words_wrong.to_f)
  end
end
