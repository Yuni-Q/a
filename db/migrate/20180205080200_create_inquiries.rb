class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :content
      t.string :answer
      t.string :email
      t.string :category

      t.timestamps null: false
    end
  end
end
