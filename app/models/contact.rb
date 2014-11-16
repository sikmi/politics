class Contact < ActiveRecord::Base

  extend Enumerize

  enumerize :gender,  in: [:"男性", :"女性"]

  validates_presence_of :first_name, :last_name, :email, :company_name,

end
