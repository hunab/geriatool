class CreateExitus < ActiveRecord::Migration
  def change
    create_table :exitus do |t|
      t.date :date
      t.text :exitus_diagnosis
      t.string :place_exitus

      t.timestamps
    end
  end
end
