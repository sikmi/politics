class CreatePageCells < ActiveRecord::Migration
  def change
    create_table :page_cells do |t|
      t.references  :page
      t.string      :category
      t.string      :title
      t.text        :body
      t.string      :image
      t.string      :movie
      t.string      :link
      t.references   :creator
      t.references   :updater
      t.timestamps
    end
  end
end
