class CreateComments < ActiveRecord::Migration
  def change
    create_table :contact do |t|
      t.references  :client, index: true
      t.references  :item, polymorphoc: true, index: true
      t.references  :user, index: true
      t.text        :body
      t.references   :creator
      t.references   :updater
      t.timestamps
    end
  end
end
