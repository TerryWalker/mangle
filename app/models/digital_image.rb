class DigitalImage < ActiveRecord::Base
  attr_accessible :author, :original_publisher, :publication_date, :title, :image, :image_cache, :subject_1, :subject_2, :subject_3
  mount_uploader :image, ImageUploader

  scope :happy_subject, where("subject_1 like '%appy%'")
  scope :happy_title, where("title like '%appy%'")

end
