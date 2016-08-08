class AddAttachmentCoverimageToLessons < ActiveRecord::Migration
  def change
  	add_attachment :lessons, :coverimage
  end
end
