class CreateVenues < ActiveRecord::Migration
  def change
    create_table :site do |t|
      t.references  :client_id
      t.references  :site_theme_id
      t.string      :subdomain
      t.string      :title
      t.string      :keyword
      t.text        :description
      t.text        :layout
      t.text        :css
      t.text        :attrs
      t.integer     :creator_id
      t.integer     :updater_id
      t.integer     :deleter_id
      t.timestamps
    end
  end
end
