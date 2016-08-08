class ChangeLessonProgressionCompletionCollumn < ActiveRecord::Migration
  def change
  	change_column :lesson_progressions, :completion, :boolean, :default => false
  end
end
