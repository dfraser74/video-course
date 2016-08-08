class LessonProgressionsController < ApplicationController
 def set_status
 	@user = current_user
 	@lesson = Lesson.friendly.find(params[:lesson])
 	@chapter = Chapter.friendly.find(params[:chapter_id])
 	status = LessonProgression.find_or_create_by(user_id: @user.id, lesson_id: @lesson.id, chapter_id: @chapter.id)
 	if status.completion == false
 		status.completion = params[:status]
 		status.save
 		flash[:notice] = "'#{@lesson.title}' completed!"
 	else
 		status.completion = params[:status]
 		status.save
 		flash[:notice] = "'#{@lesson.title}' marked incomplete"
 	end
 	redirect_to chapter_path(@chapter)
 end
end