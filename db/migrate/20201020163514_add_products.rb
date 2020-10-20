class AddProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.text :name
      t.text :description
      t.text :code
      t.decimal :price, precision: 8, scale: 2
      
      t.timestamps
    end
  end
end
