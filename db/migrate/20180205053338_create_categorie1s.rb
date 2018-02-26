class CreateCategorie1s < ActiveRecord::Migration
  def change
    create_table :categorie1s do |t|
      t.string :content 

      t.timestamps null: false
    end
  end
end
