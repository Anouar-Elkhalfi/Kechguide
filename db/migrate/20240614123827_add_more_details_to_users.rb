class AddMoreDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :profile_picture, :string
    add_column :users, :bio, :text
    add_column :users, :language_spoken, :string
    add_column :users, :location, :string
    add_column :users, :contact_number, :string
  end
end
