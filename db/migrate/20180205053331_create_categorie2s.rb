class CreateCategorie2s < ActiveRecord::Migration
  def change
    create_table :categorie2s do |t|

      t.string :content
      t.references :categorie1, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
