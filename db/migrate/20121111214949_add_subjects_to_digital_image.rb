class AddSubjectsToDigitalImage < ActiveRecord::Migration
  def change
    add_column :digital_images, :subject_1, :string
    add_column :digital_images, :subject_2, :string
    add_column :digital_images, :subject_3, :string
  end
end
