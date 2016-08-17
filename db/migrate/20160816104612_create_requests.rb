class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :profile_id
      t.integer :activity_id
      t.string :town_city
      t.string :country

      t.timestamps null: false
    end
  end
end
