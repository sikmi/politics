class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string      :name
      t.string      :role
      t.references  :client,index: true
      t.string      :email
      t.string      :encrypted_password
      t.string      :image
      t.timestamps
    end
  end
end
