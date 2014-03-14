class AddPhotoGroupToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :photo_group, :integer
  end
end
