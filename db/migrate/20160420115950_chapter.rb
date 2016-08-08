class Chapter < ActiveRecord::Migration
  def change
  	add_attachment :chapters, :icon
  end
end
