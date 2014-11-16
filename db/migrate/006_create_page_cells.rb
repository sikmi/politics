class CreatePageCells < ActiveRecord::Migration
  def change
    create_table :page_cells do |t|
      t.references  :page_id
      t.string      :category
      t.string      :title
      t.text        :body
      t.string      :image
      t.string      :movie
      t.string      :link
      t.integer     :creator_id
      t.integer     :updater_id
      t.integer     :deleter_id
      t.timestamps
    end
  end
end
