class CreateLessonProgressions < ActiveRecord::Migration
  def change
    create_table :lesson_progressions do |t|
      t.boolean :completion
      t.references :user, index: true, foreign_key: true
      t.references :lesson, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
