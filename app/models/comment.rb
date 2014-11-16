class Comment < ActiveRecord::Base

  has_many :clients
  has_many :users

  #validates_presence_of :


end
