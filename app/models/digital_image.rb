class DigitalImage < ActiveRecord::Base
  attr_accessible :author, :original_publisher, :publication_date, :title, :image, :image_cache
  mount_uploader :image, ImageUploader

end
