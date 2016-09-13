class RemoveProductImageIdFormProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :product_image_id, :string
  	add_column :products, :picture, :string
  end
end
