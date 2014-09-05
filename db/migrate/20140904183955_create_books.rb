class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_name
      t.integer :book_level
      t.integer :total_words
      t.integer :words_wrong
      t.integer :self_corrections
      t.integer :student_id

      t.timestamps
    end
  end
end
