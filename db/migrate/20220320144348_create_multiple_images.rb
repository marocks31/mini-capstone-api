class CreateMultipleImages < ActiveRecord::Migration[7.0]
  def change
    create_table :multiple_images do |t|
      t.string :url
      t.integer :product_id

      t.timestamps
    end
  end
end
