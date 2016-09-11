class AddDetailsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :composition, :text
    add_column :products, :usage, :text
    add_column :products, :duration, :integer
  end
end
