class AddChapterIdToLessonProgressions < ActiveRecord::Migration
  def change
    add_reference :lesson_progressions, :chapter, index: true
  end
end
