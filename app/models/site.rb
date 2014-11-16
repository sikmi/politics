class Site < ActiveRecord::Base

  has_many :site_themes
  has_many :clients
  belongs_to :page
  belongs_to :pv
end
