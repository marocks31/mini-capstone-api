class Image < ActiveRecord::Migration[7.0]
  def change
    rename_table :multiple_images, :images

  end
end
