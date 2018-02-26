class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :img
      t.string :name
      t.integer :price
      t.integer :weight
      t.references :categorie1, index: true, foreign_key: true
      t.references :categorie2, index: true, foreign_key: true
      t.references :categorie3, index: true, foreign_key: true
      t.text :content
      t.integer :discount

      t.timestamps null: false
    end
  end
end
