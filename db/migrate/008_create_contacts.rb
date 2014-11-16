class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string      :first_name
      t.string      :last_name
      t.string      :gender
      t.string      :email
      t.string      :company_name
      t.string      :postal_code1
      t.string      :postal_code2
      t.string      :prefecture
      t.string      :city
      t.string      :district
      t.string      :building
      t.text        :comment
      t.timestamps
    end
  end
end
