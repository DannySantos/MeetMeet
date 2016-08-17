class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :town_city
      t.string :country

      t.timestamps null: false
    end
  end
end
