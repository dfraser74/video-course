class Chapter < ActiveRecord::Base
extend FriendlyId
friendly_id :title, use: :slugged

has_attached_file :icon, styles: {small: "150x150>", med: "250x250>", large: "1000x400>"}
validates_attachment_content_type :icon, :content_type => ["image/jpg", "image/png", "image/jpeg"]

has_many :lessons

end
