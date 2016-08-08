class AddAttachmentVideoToLessons < ActiveRecord::Migration
  def change
  	add_attachment :lessons, :video
  end
end
