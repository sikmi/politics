class Page < ActiveRecord::Base

  has_many :sites
  has_many :page_themes
  belongs_to :page_cell

end
