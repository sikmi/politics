class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.references  :site, index: true
      t.references  :page_theme, index: true
      t.string      :url
      t.string      :title
      t.text        :description
      t.string      :image
      t.text        :html
      t.text        :css
      t.text        :attrs
      t.timestamps
    end
  end
end
