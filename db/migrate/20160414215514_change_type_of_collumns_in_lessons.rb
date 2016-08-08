class ChangeTypeOfCollumnsInLessons < ActiveRecord::Migration
  def change
    change_column :lessons, :actions, :text
    change_column :lessons, :files, :text
    change_column :lessons, :images, :text
    change_column :lessons, :videos, :text
    change_column :lessons, :sources, :text
  end
end
