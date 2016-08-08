class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.string :sources
      t.string :actions
      t.string :files
      t.string :images
      t.string :videos
      t.timestamps null: false
    end
  end
end
