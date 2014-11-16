class CreateVenues < ActiveRecord::Migration
  def change
    create_table :pv do |t|
      t.references  :site_id
      t.timestamps
    end
  end
end
