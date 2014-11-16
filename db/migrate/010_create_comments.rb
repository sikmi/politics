class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references  :client_id
      t.integer     :item_id
      t.string      :item_type
      t.references  :user_id
      t.text        :body
      t.integer     :creator_id
      t.integer     :updater_id
      t.integer     :deleter_id
      t.timestamps
    end
  end
end