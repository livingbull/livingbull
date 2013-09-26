class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.binary :content
      t.text :description

      t.timestamps
    end
  end
end
