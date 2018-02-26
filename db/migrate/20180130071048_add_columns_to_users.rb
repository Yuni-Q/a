class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :phone, :string
    add_column :users, :point, :integer
    add_column :users, :marketing_email, :string
    add_column :users, :marketing_phone, :string
    add_column :users, :agreement, :string
    add_column :users, :information, :string
    add_column :users, :marketing, :string
    add_column :users, :donation_point, :integer
    add_column :users, :profile_img, :string

  end
end
