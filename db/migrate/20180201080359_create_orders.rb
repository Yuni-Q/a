class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :phone
      t.string :phone2
      t.text :product_ids
      t.text :basket_ids
      t.text :numbers
      t.text :donations
      t.integer :product_price
      t.integer :donation_price
      t.integer :total_price
      t.string :address
      t.string :address_detail
      t.string :address_number
      t.string :payment
      t.string :invoice
      t.string :parcel
      t.string :parcel_number
      t.string :payment_option
      t.boolean :agreement
      t.string :content

      t.timestamps null: false
    end
  end
end
