class RemoveContentFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :content, :binary
  end
end
