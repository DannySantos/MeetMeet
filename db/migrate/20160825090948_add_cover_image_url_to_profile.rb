class AddCoverImageUrlToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :cover_image_url, :string
  end
end
