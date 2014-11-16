class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string      :name
      t.string      :email
      t.string      :encrypted_password
      t.string      :gender
      t.string      :birthday
      t.string      :postal_code
      t.string      :prefecture
      t.string      :city
      t.string      :district
      t.string      :building
      t.string      :tel1
      t.string      :tel2
      t.string      :tel3
      t.string      :party
      t.string      :office_postal_code
      t.string      :office_prefecture
      t.string      :office_city
      t.string      :office_district
      t.string      :office_building
      t.string      :office_tel1
      t.string      :office_tel2
      t.string      :office_tel3
      t.string      :office_fax1
      t.string      :office_fax2
      t.string      :office_fax3
      t.text        :profile
      t.string      :facebook_id
      t.string      :rakuten_id
      t.timestamps
    end
  end
end
