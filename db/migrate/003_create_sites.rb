class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.references  :client, index: true
      t.references  :site_theme, index: true
      t.string      :subdomain
      t.string      :title
      t.string      :keyword
      t.text        :description
      t.text        :layout
      t.text        :css
      t.text        :attrs
      t.references   :creator
      t.references   :updater
      t.timestamps
    end
  end
end
