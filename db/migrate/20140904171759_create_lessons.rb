class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :student
      t.integer :student_id
      t.string :reminder
      t.string :reflection
      t.boolean :present
      t.datetime :cal_date
      t.integer :lesson_number

      t.timestamps
    end
  end
end
