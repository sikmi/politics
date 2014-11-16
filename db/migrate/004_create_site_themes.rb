class CreateSiteThemes < ActiveRecord::Migration
  def change
    create_table :site_themes do |t|
      t.text        :layout
      t.text        :css
      t.text        :attrs
      t.references   :creator
      t.references   :updater
      t.timestamps
    end
  end
end
