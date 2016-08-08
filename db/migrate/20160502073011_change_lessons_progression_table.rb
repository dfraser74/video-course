class ChangeLessonsProgressionTable < ActiveRecord::Migration
  def change
  	 rename_column :lesson_progressions, :lessons_id, :lesson_id
  end
end
