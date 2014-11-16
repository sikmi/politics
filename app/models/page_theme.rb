class PageTheme < ActiveRecord::Base

  has_many :sites
  belongs_to :page

end
