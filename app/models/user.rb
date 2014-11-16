class User < ActiveRecord::Base

  extend Enumerize

  enumerize :role,  in: [:"general", :"admin"]

  has_many :clients

end