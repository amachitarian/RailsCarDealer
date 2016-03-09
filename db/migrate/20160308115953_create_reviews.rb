class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :description
      t.string :rating
      t.string :cardealer_id

      t.timestamps null: false
    end
  end
end
