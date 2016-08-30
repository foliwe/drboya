class CreateTestimonies < ActiveRecord::Migration
  def change
    create_table :testimonies do |t|
      t.string :name
      t.text :body

      t.timestamps null: false
    end
  end
end
