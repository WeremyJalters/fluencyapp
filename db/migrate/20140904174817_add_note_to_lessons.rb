class AddNoteToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :note, :string
  end
end
