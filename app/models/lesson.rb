class Lesson < ActiveRecord::Base
extend FriendlyId
  friendly_id :title, use: :slugged

  has_attached_file :coverimage, styles: {small: "150x150>", med: "250x250>", large: "1000x400>"}
  validates_attachment_content_type :coverimage, :content_type => ["image/jpg", "image/png", "image/jpeg"]

	has_attached_file :video,
    styles: lambda { |a| a.instance.is_image? ? {:small => "x200>", :medium => "x300>", :large => "x400>"}  : {:thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10}, :medium => { :geometry => "300x300#", :format => 'jpg', :time => 10}}},
    processors: lambda { |a| a.is_video? ? [ :ffmpeg ] : [ :thumbnail ] }

 validates_attachment_content_type :video,
    :content_type => ['video/mp4'],
    :message => "Sorry, right now we only support MP4 video",
    :if => :is_type_of_video?
  validates_attachment_content_type :video,
     :content_type => ['image/png', 'image/jpeg', 'image/jpg', 'image/gif'],
     :message => "Different error message",
     :if => :is_type_of_image?
  has_attached_file :video

  protected
  def is_type_of_video?
    video.content_type =~ %r(video)
  end

  def is_type_of_image?
    video.content_type =~ %r(image)
  end
  
	belongs_to :chapter
	serialize :sources
	serialize :actions
	serialize :files
	serialize :images
	serialize :videos


end
