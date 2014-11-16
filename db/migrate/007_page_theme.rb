class CreateVenues < ActiveRecord::Migration
  def change
    create_table :page_theme do |t|
      t.references  :site_id
      t.string      :name
      t.text        :html
      t.text        :css
      t.text        :attrs
      t.integer     :creator_id
      t.integer     :updater_id
      t.integer     :deleter_id
      t.timestamps
    end
  end
end
