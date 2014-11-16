class CreateVenues < ActiveRecord::Migration
  def change
    create_table :site_theme do |t|
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
