class CreateVenues < ActiveRecord::Migration
  def change
    create_table :user do |t|
      t.string      :name
      t.string      :role
      t.references  :client_id
      t.string      :email
      t.string      :encrypted_password
      t.string      :image
      t.timestamps
    end
  end
end
