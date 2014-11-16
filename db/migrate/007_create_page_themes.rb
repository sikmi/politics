class CreatePageThemes < ActiveRecord::Migration
  def change
    create_table :page_themes do |t|
      t.references  :site
      t.string      :name
      t.text        :html
      t.text        :css
      t.text        :attrs
      t.references   :creator
      t.references   :updater
      t.timestamps
    end
  end
end
