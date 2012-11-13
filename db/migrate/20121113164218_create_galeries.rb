class CreateGaleries < ActiveRecord::Migration
  def change
    create_table :galeries do |t|
      t.string :image
      t.date :image_date
      t.text :comments

      t.timestamps
    end
  end
end
