class Client < ActiveRecord::Base

  belongs_to :comment
  belongs_to :site
  belongs_to :user

  extend Enumerize

  enumerize :gender,  in: [:"男性", :"女性"]

  validates_presence_of :name, :email, :encrypted_password, :gender, :birthday, :facebook_id, :rakuten_id

end
