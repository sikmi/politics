class CreatePvs < ActiveRecord::Migration
  def change
    create_table :pvs do |t|
      t.references  :site
      t.timestamps
    end
  end
end
