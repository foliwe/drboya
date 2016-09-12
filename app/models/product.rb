class Product < ActiveRecord::Base
	attachment :product_image, type: :image
end
