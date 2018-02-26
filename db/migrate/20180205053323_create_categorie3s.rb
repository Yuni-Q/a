class CreateCategorie3s < ActiveRecord::Migration
  def change
    create_table :categorie3s do |t|

      t.string :content
      t.references :categorie2, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
