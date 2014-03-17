class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string :name
      t.string :location
      t.integer :adventure_type
      t.date :adventure_date
      t.text :comments

      t.timestamps
    end
  end
end
