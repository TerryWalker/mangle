class DigitalImage < ActiveRecord::Base
  attr_accessible :author, :original_publisher, :publication_date, :title
end
