class AddImageToDigitalImage < ActiveRecord::Migration
  def change
    add_column :digital_images, :image, :string
  end
end
