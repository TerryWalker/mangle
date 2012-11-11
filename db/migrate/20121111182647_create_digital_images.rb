class CreateDigitalImages < ActiveRecord::Migration
  def change
    create_table :digital_images do |t|
      t.string :title
      t.string :author
      t.string :original_publisher
      t.date :publication_date

      t.timestamps
    end
  end
end
