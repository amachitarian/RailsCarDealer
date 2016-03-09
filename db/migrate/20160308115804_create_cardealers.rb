class CreateCardealers < ActiveRecord::Migration
  def change
    create_table :cardealers do |t|
      t.string :company_name
      t.string :brand
      t.string :location
      t.string :year

      t.timestamps null: false
    end
  end
end
